package com.bulbcrowding.tests;

import java.nio.charset.StandardCharsets;

import org.springframework.beans.factory.annotation.Autowired;

import com.bulbcrowding.dao.HibernateUtils;
import com.bulbcrowding.dao.ProjectDaoImpl;
import com.bulbcrowding.dao.UserDao;
import com.bulbcrowding.dao.UserDaoImpl;
import com.bulbcrowding.model.Passwords;
import com.bulbcrowding.model.Project;
import com.bulbcrowding.model.User;

public class Tester {

	@Autowired
	public static UserDaoImpl userDaoImp;

	@Autowired
	private static ProjectDaoImpl projectDaoImp;

	public static String MD5(String md5) {
		try {
			java.security.MessageDigest md = java.security.MessageDigest.getInstance("MD5");
			byte[] array = md.digest(md5.getBytes());
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < array.length; ++i) {
				sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100).substring(1, 3));
			}
			return sb.toString();
		} catch (java.security.NoSuchAlgorithmException e) {
		}
		return null;
	}

	public static void tryPasswords() {
		byte[] salt = Passwords.getNextSalt();
		byte[] tt = Passwords.hash("Phoenix".toCharArray(), salt);
		System.out.println("Salt : " + salt.toString());
		System.out.println("msg: " + tt.toString());
		System.out.println(Passwords.isExpectedPassword("Phoenix".toCharArray(), salt, tt));

		byte[] saltt = "[B@1ce29c39".trim().getBytes(StandardCharsets.UTF_8);

		System.out.println("--> " + Passwords.isExpectedPassword("a123123".trim().toCharArray(), saltt,
				"[B@653e0184".trim().getBytes(StandardCharsets.UTF_8)));

		byte[] pwdHash = Passwords.hash("a123123".toCharArray(), "[B@1ce29c39".trim().getBytes());
		System.out.println(pwdHash.toString() + " -- " + "[B@653e0184");

		System.out.println(MD5("a123123"));

	}

	public static void tryHibernate() {
		User user = new User();
		user.setName_user("First user");
		user.setEmail_user("hamza@hamza.com");
		HibernateUtils.getSessionFactory();
		UserDao ud = new UserDaoImpl();
		ud.create(user);
	}

	public static void test() {
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
	}

	public static void main(String[] args) {
		// tryHibernate();
		// tryPasswords();
		// test();
	}

}
