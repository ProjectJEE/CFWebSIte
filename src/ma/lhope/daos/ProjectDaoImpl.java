package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import entities.Project;
import utils.HibernateUtils;

public class ProjectDaoImpl implements Projectdao {

	public void create(Project entity) {
		Session s = HibernateUtils.getSessionFactory().openSession();
		Transaction tx = s.beginTransaction();
		try {

			s.persist(entity);
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}finally {
			s.close();
		}

		
	}

	public void update(Project entity) {
		Session s = HibernateUtils.getSessionFactory().openSession();
		Transaction tx = s.beginTransaction();
		try {
			s.update(entity);
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
		}finally {
			s.close();
		}
		
	}

	public void delete(Project entity) {
		Session s = HibernateUtils.getSessionFactory().openSession();
		Transaction tx = s.beginTransaction();
		try {

			s.delete(entity);
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
		}finally {
			s.close();
		}
		
	}

	public Project getProjectById(long id) {
		Project project=null;
		Session s = HibernateUtils.getSessionFactory().openSession();
		Transaction tx = s.beginTransaction();
		try {
		project=s.get(Project.class, id);
		//user= s.byId( User.class ).load( id );
		tx.commit();
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}finally {
			s.close();
		}
		return project;
	}

	public Project getProjectByName(String name) {
		Session s = HibernateUtils.getSessionFactory().openSession();
		Transaction tx = s.beginTransaction();
		Query q = s.createQuery("from Project p where p.name_project=:name");
		q.setString("name", name);
		List<Project> projects=q.list();
		if(projects.size()==0)
			return null;
		return projects.get(0);
	}

}
