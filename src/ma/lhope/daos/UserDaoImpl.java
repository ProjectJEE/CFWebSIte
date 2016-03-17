package ma.lhope.daos;

import org.hibernate.Session;
import org.hibernate.Transaction;

import ma.lhope.models.User;

public class UserDaoImpl implements UserDao {

	public void create(User entity) {
		Session s = HibernateUtils.getSessionFactory().openSession();
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

}
