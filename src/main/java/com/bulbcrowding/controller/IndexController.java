package com.bulbcrowding.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.bulbcrowding.dao.ProjectDaoImpl;
import com.bulbcrowding.dao.UserDaoImpl;
import com.bulbcrowding.model.Passwords;
import com.bulbcrowding.model.Project;
import com.bulbcrowding.model.User;

@Controller
@Scope("session")
@SessionAttributes("user")
public class IndexController {

	@Autowired
	private ProjectDaoImpl projectDaoImp;

	@Autowired
	private UserDaoImpl userDaoImp;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(ModelMap pmap) {
		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView redirect(HttpServletRequest request, HttpServletResponse response) {
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
		// first get the user by his email
		User user = userDaoImp.getUserByEmail(request.getParameter("email_user").trim());
		if (user == null)
			return new ModelAndView("redirect:/");
		// if
		// (Passwords.isExpectedPassword(request.getParameter("password_user").trim().toCharArray(),
		// user.getSalt_user().getBytes(), user.getPassword_user().getBytes()))
		// {
		if (Passwords.MD5(request.getParameter("password_user").trim()).equals(user.getPassword_user().trim())) {
			ModelAndView mav = new ModelAndView();
			mav.addObject("projects", projectDaoImp.getAllProjects());
			mav.addObject("user", user);
			mav.setViewName("redirect:/home");
			// request.getSession().setAttribute("user", user);
			return mav;
		}
		return new ModelAndView("index");
	}

	// this is just for test purpose !
	@RequestMapping(value = "/test")
	public ModelAndView testUser() {
		User user = new User();
		user.setName_user("Mike Frankly");
		user.setEmail_user("mike@frankly.com");

		Project pr = new Project();
		pr.setName_project("Sleeping Beauty & the Beast, a Ballez");
		pr.setCategory_project("Dance");
		pr.setDescription_project(
				" 23 dancers, 18 musicians, 2 theaters, 2 Acts and 2 eras, within a Ballez that canonizes L.E.S. Activist Herstory in 1893 and 1993. ");
		pr.setNbr_days(20);
		pr.setMoney_goal(1545);
		pr.setUser(user);
		projectDaoImp.create(pr);

		return new ModelAndView("index");
	}

}
