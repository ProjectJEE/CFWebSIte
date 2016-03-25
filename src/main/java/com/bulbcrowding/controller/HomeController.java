package com.bulbcrowding.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.bulbcrowding.dao.ProjectDaoImpl;
import com.bulbcrowding.dao.UserDaoImpl;
import com.bulbcrowding.model.Project;
import com.bulbcrowding.model.User;

@Controller
@Scope("session")
@SessionAttributes("user")
// @RequestMapping(value = "/home")
public class HomeController {
	@Autowired
	private ProjectDaoImpl projectDaoImp;
	@Autowired
	private UserDaoImpl userDaoImp;

	@RequestMapping(value = "/home")
	public ModelAndView homeUser(HttpServletRequest request, HttpServletResponse response) {

		// make sure only connected users access this page
		if (request.getSession().getAttribute("user") == null) {
			return new ModelAndView("index");
		}

		// get 8 categories if there is:
		List<Project> projects = projectDaoImp.getAllProjects();
		Set<String> cats = new HashSet<String>();

		for (Project project : projects) {
			cats.add(project.getCategory_project());
		}

		ModelAndView mav = new ModelAndView();
		// all projects
		mav.addObject("projects", projects);
		// categories
		mav.addObject("categories", cats);
		// choose the lucky project of today's :
		mav.addObject("lucky", projects.get(new Random().nextInt(projects.size())));

		// returning the relative view home !
		mav.setViewName("home");
		return mav;
	}

	@RequestMapping(value = "/home/logout", method = RequestMethod.GET)
	public String logout(HttpSession session, Model model) {
		session.invalidate();
		if (model.containsAttribute("user"))
			model.asMap().remove("user");
		return "redirect:/";
	}

	@RequestMapping(value = "/home/project", method = RequestMethod.GET)
	public ModelAndView showProject(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		Float number = Float.parseFloat(request.getParameter("id"));

		Project project = projectDaoImp.getProjectById(number.intValue());
		User user = userDaoImp.getUserById(project.getUser().getId_user());

		mav.addObject("number", number);
		mav.addObject("maker", user);
		mav.addObject("project", project);
		mav.setViewName("project");
		return mav;
	}

	@RequestMapping(value = "/home/fill", method = RequestMethod.GET)
	public String fill_database(HttpSession session, Model model) {

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
		
		
		
		return "redirect:/home";
	}

}
