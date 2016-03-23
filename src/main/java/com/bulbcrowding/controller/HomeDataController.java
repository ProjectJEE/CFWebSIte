package com.bulbcrowding.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.bulbcrowding.dao.UserDaoImpl;
import com.bulbcrowding.model.Passwords;
import com.bulbcrowding.model.User;

@RestController
@SessionAttributes("user")
public class HomeDataController {

	@Autowired
	private UserDaoImpl userDaoImp;

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public ModelAndView signup(HttpServletRequest request, HttpServletResponse response) {
		// this should be returned like a json object via the httpjsonconverter

		User user = new User();
		byte[] salt = Passwords.getNextSalt();

		// No need for another checking on the controller side
		// beside, if the user disables JS, the form will not be sent ! (the
		// post is sent via jquery and not the ordinary way)
		user.setEmail_user(request.getParameter("email_user"));
		user.setName_user(request.getParameter("name_user"));
		user.setSalt_user(salt.toString());
		user.setPassword_user(Passwords.hash(request.getParameter("password_user").toCharArray(), salt).toString());
		user.setJoinDate_user(new Date());
		if (!request.getParameter("img_user").isEmpty())
			user.setImg_user(request.getParameter("img_user"));
		userDaoImp.create(user);
		return new ModelAndView("index", "User", user);
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public Map<String, String> login(User jsonUser) {
		// this should be returned like a json object via the httpjsonconverter
		Map<String, String> map = new HashMap<String, String>();
		map.put("flag", "OK");
		return map;
	}

	@RequestMapping(value = "/statistics", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public Map<String, String> getStatistics() {
		Map<String, String> map = new HashMap<String, String>();
		map.put("flag", "OK");
		return map;
	}

}
