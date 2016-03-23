package com.bulbcrowding.tests;

import com.bulbcrowding.model.Passwords;

public class Tester {

	public static void main(String[] args) {

		byte[] salt = Passwords.getNextSalt();
		byte[] tt = Passwords.hash("Phoenix".toCharArray(), salt);
		System.out.println("Salt : " + salt.toString());
		System.out.println("msg: "+tt.toString());

		System.out.println(Passwords.isExpectedPassword("Phoenix".toCharArray(), salt, tt));

	}

}
