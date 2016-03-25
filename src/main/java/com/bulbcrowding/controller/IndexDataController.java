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

import com.bulbcrowding.dao.UserDaoImpl;
import com.bulbcrowding.model.Passwords;
import com.bulbcrowding.model.User;

@RestController
public class IndexDataController {

	@Autowired
	private UserDaoImpl userDaoImp;

	private String isOK(String input, String email, String name) {
		for (User us : userDaoImp.getAllUsers()) {
			if (us.getEmail_user().equals(email)) {
				if (input.isEmpty()) {
					input = "{ \"result\": \"NOT_OK\", \"fields\": {";
				}
				input += " \"email_user\" : \" The " + email + " email is already taken\", ";

			} else if (us.getName_user().equals(name)) {
				if (input.isEmpty()) {
					input = "{ \"result\": \"NOT_OK\", \"fields\": {";
				}
				input += " \"name_user\" : \" The " + name + " name is already taken\",";
			}
		}

		if (input.isEmpty())
			return "{ \"result\": \"OK\" }";
		int pos = input.lastIndexOf(",");
		input = new StringBuilder(input).replace(pos, pos + 1, "").toString();
		input += "}}";
		return input;
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signup(HttpServletRequest request, HttpServletResponse response) {
		// this should be returned like a json object via the httpjsonconverter
		// if (request.getContentLength() == 0)
		// return "{\"flag\":\"NOT_OK\"}";

		Map<String, Map<String, String>> errors = new HashMap<String, Map<String, String>>();
		// String output = "{ \"result\": \"NOT_OK\", \"fields\": {";
		String output = isOK("", request.getParameter("email_user"), request.getParameter("name_user"));

		if (output.contains("NOT_OK"))
			return output;

		User user = new User();
		 byte[] salt = Passwords.getNextSalt();
		// No need for another checking on the controller side
		// beside, if the user disables JS, the form will not be sent ! (the
		// post is sent via jquery and not the ordinary way)
		user.setEmail_user(request.getParameter("email_user"));
		user.setName_user(request.getParameter("name_user"));
		user.setSalt_user(salt.toString());
		user.setPassword_user(Passwords.MD5(request.getParameter("password_user")));
		// user.setPassword_user(Passwords.hash(request.getParameter("password_user").toCharArray(),
		// salt).toString());
		user.setJoinDate_user(new Date());
		if (!request.getParameter("img_user").isEmpty())
			user.setImg_user(request.getParameter("img_user"));
		userDaoImp.create(user);
		request.getSession().setAttribute("user", user);
		return output;
	}

	@RequestMapping(value = "/statistics", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public Map<String, String> getStatistics() {
		Map<String, String> map = new HashMap<String, String>();
		map.put("flag", "OK");
		return map;
	}

}
