package com.bulbcrowding.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bulbcrowding.model.User;

@Repository
public class UserDaoImpl implements UserDao {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		sessionFactory = sf;
	}

	@Override
	@Transactional
	public void create(User entity) {
		// Session s = HibernateUtils.getSessionFactory().openSession();
		Session s = sessionFactory.openSession();
		Transaction tx = s.beginTransaction();
		try {
			s.persist(entity);
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
		} finally {
			s.close();
		}

	}

	@Override
	public void update(User entity) {
		// Session s = HibernateUtils.getSessionFactory().openSession();
		Session s = sessionFactory.openSession();
		Transaction tx = s.beginTransaction();
		try {
			s.update(entity);
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
		} finally {
			s.close();
		}

	}

	@Override
	public void delete(User entity) {
		// Session s = HibernateUtils.getSessionFactory().openSession();
		Session s = sessionFactory.openSession();
		Transaction tx = s.beginTransaction();
		try {
			s.delete(entity);
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
		} finally {
			s.close();
		}
	}// end delete

	@Override
	public User getUserById(long id) {
		User user = null;
		// Session s = HibernateUtils.getSessionFactory().openSession();
		Session s = sessionFactory.openSession();
		Transaction tx = s.beginTransaction();
		try {
			user = s.get(User.class, id);
			// user= s.byId( User.class ).load( id );
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		} finally {
			s.close();
		}
		return user;
	}

	@Override
	public User getUserByName(String name) {
		Session s = sessionFactory.openSession();
		Transaction tx = s.beginTransaction();
		Query q = s.createQuery("from User u where u.name_user=:name");
		q.setString("name", name);
		List<User> users = q.list();
		if (users.size() == 0)
			return null;
		return users.get(0);
	}

	@Override

	public List<User> getAllUsers() {
		Session session = sessionFactory.openSession();
		// return session.createCriteria(User.class).list();
		@SuppressWarnings("unchecked")
		List<User> ulist = session.createQuery("from User").list();
		return ulist;
	}

	@Override
	public User getUserByEmail(String email) {
		Session s = sessionFactory.openSession();
		Query q = s.createQuery("from User u where u.email_user=:email");
		q.setString("email", email);
		List<User> users = q.list();
		if (users.size() == 0)
			return null;
		return users.get(0);
	}

}