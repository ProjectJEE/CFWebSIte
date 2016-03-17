package ma.lhope.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ma.lhope.daos.HibernateUtils;
import ma.lhope.daos.UserDao;
import ma.lhope.daos.UserDaoImpl;
import ma.lhope.models.User;

@Controller
public class homeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(ModelMap pmap) {
		pmap.addAttribute("message", "Index Page says hi !");
		return "index";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup(ModelMap pmap) {
		pmap.addAttribute("message", "signup Page says hi !");
		return "signup";
	}

	// test purpose only !
	@RequestMapping(value = "/dao", method = RequestMethod.GET)
	public ModelAndView testDao() {
		User user = new User();
		user.setName_user("First user");
		HibernateUtils.getSessionFactory();
		UserDao ud = new UserDaoImpl();
		ud.create(user);
		return new ModelAndView("home", "User", user);
		// return new ModelAndView("home");
	}

}
