package com.bulbcrowding.dao;

import java.util.List;

import com.bulbcrowding.model.Project;

public interface Projectdao {
	public void create(Project entity);

	public void update(Project entity);

	public void delete(Project entity);

	public Project getProjectById(long id);

	public Project getProjectByName(String name);

	public List<Project> getAllProjects();
}