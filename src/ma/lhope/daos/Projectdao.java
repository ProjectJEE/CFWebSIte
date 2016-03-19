package dao;

import entities.Project;

public interface Projectdao {
	public void create(Project entity);
 	public void update(Project entity);
	public void delete(Project entity);
	public Project getProjectById(long id);
	public Project getProjectByName(String name);

}
