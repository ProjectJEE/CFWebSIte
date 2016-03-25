package com.bulbcrowding.tests;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.Date;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.ContextHierarchy;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;

import com.bulbcrowding.dao.UserDaoImpl;
import com.bulbcrowding.model.User;

import junit.framework.Assert;

@SuppressWarnings("deprecation")
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
// @ContextConfiguration("classpath:WEB-INF/spring/bulbcrowding-servlet.xml")
// @WebAppConfiguration("classpath:resources")
@ContextHierarchy({ @ContextConfiguration("classpath*:application-context.xml") })
public class ModelTests {

	@Autowired
	private WebApplicationContext wac;

	@Autowired
	private UserDaoImpl userDaoImp;

	private MockMvc mockMvc;

	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.standaloneSetup(this.wac).alwaysExpect(status().isOk()).build();
		// this.mockMvc = MockMvcBuilders.standaloneSetup(new
		// homeController()).build();
	}

	@Test
	public void getIndex() throws Exception {
		this.mockMvc.perform(get("/"));
	}

	@Test
	@Transactional
	@Rollback(true)
	public void testAddUser() {

		User user = new User();
		user.setName_user("ROUINEB");
		user.setEmail_user("rouineb.business@gmail.com");
		user.setPassword_user("19911991");
		user.setJoinDate_user(new Date());
		userDaoImp.create(user);

		Assert.assertEquals(userDaoImp.getUserByName(user.getName_user()), user.getName_user());
	}

}