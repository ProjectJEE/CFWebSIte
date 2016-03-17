package ma.lhope.daos;

import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class HibernateUtils {
	
	private static final SessionFactory sessionFactory = buildSessionFactory();

	private static SessionFactory buildSessionFactory() {
		final StandardServiceRegistry registry = new StandardServiceRegistryBuilder()
				.configure() // configures settings from hibernate.cfg.xml
				.build();
			return new MetadataSources(registry).buildMetadata().buildSessionFactory();
	}// end buildSessionFactory

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public static void tearDown() throws Exception {
		if (sessionFactory != null) {
			sessionFactory.close();
		}
	}
}
