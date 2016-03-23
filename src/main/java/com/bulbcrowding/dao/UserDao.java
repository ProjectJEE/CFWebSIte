package com.bulbcrowding.dao;

import com.bulbcrowding.model.User;

public interface UserDao {

	public void create(User entity);

	public void update(User entity);

	public void delete(User entity);

	public User getUserById(long id);

	public User getUserByName(String name);

}