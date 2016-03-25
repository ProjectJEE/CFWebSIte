package com.bulbcrowding.tests;

/**
 * 
 */
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.bulbcrowding.model.User;

/**
 * @author jaguar-gamer
 *
 */
public class UserTest {

	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	private User user;

	/**
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws Exception {

		// User(String email, String username, Date birthday, String fname,
		// String lname, String password, Date dateInsc, Gender gender)
		// user = new User("mail@mail.com", "user", dateFormat.parse("1988-06-14
		// 00:00:00"), "prenom", "nom", "123456", dateFormat.parse("2016-03-23
		// 00:00:00"),Gender.MALE);
	}

	/**
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
		user = null;
	}

	/**
	 * Test method for {@link com.think.model.User#User()}.
	 */
	@Test
	public void testUser() {
		assertNotNull("L'instance n'est pas créée", user);
	}

	/**
	 * Test method for {@link com.think.model.User#getFname()}.
	 */
	@Test
	public void testgetFname() {
		assertEquals("Le nom est incorrect", "prenom", user.getName_user());
	}

	/**
	 * Test method for {@link com.think.model.User#setFname(String)}.
	 */
	@Test
	public void testsetname() {
		user.setName_user("prenom2");
		assertEquals("Le nom est incorrect", "prenom2", user.getName_user());
	}

	@Test
	public final void testGetname() {
		assertEquals("le nom est incorrect", "nom", user.getName_user());
	}

}
