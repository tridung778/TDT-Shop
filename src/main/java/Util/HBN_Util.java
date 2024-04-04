package Util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HBN_Util {
	public static SessionFactory factory = buildSessionFactory();

	private static SessionFactory buildSessionFactory() {
		try {
			return new Configuration().configure().buildSessionFactory();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static SessionFactory getSessionFactory() {
		return factory;
	}
}
