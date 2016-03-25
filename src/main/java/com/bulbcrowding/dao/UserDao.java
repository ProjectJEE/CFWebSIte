package com.bulbcrowding.dao;

import java.util.List;

import com.bulbcrowding.model.User;

public interface UserDao {

	public void create(User entity);

	public void update(User entity);

	public void delete(User entity);

	public User getUserById(long id);

	public User getUserByName(String name);

	public User getUserByEmail(String email);

	public List<User> getAllUsers();

}