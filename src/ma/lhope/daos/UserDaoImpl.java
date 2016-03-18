package dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import entities.User;
import utils.HibernateUtils;

public class UserDaoImpl implements UserDao {

	public void create(User entity) {
		Session s = HibernateUtils.getSessionFactory().openSession();
		Transaction tx = s.beginTransaction();
		try {

			s.persist(entity);
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
		}finally {
			s.close();
		}

	}

//	public void update(User entity) {
//
//	}
	public void delete(User entity) {
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
	}//end delete
		  
	
	//@SuppressWarnings("unchecked")
	public User getUserById(long id)
	{
		User user=null;
		Session s = HibernateUtils.getSessionFactory().openSession();
		Transaction tx = s.beginTransaction();
		try {
		user=s.get(User.class, id);
		//user= s.byId( User.class ).load( id );
		tx.commit();
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}finally {
			s.close();
		}
		return user;}
	
	public User getUserByName(String name)
	{
		//http://www.jmdoudoux.fr/java/dej/chap-hibernate.htm
//		Query q = s.createQuery("from foo Foo as foo where foo.name=:name and foo.size=:size");
//		q.setProperties(fooBean); // fooBean has getName() and getSize()
//		List foos = q.list();
		Session s = HibernateUtils.getSessionFactory().openSession();
		Transaction tx = s.beginTransaction();
		Query q = s.createQuery("from User u where u.name_user=:name");
		q.setString("name", name);
		List<User> users=q.list();
		if(users.size()==0)
			return null;
		return users.get(0);
	}

}
