package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import entities.Comment;
import utils.HibernateUtils;

public class CommentDaoImpl implements CommentDao {

	@Override
	public void create(Comment entity) {
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

	@Override
	public void update(Comment entity) {
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

	@Override
	public void delete(Comment entity) {
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

	@Override
	public Comment getCommentById(long id) {
		Comment comment=null;
		Session s = HibernateUtils.getSessionFactory().openSession();
		Transaction tx = s.beginTransaction();
		try {
		comment=s.get(Comment.class, id);
		//comment= s.byId( Comment.class ).load( id );
		tx.commit();
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}finally {
			s.close();
		}
		return comment;
	}



}
