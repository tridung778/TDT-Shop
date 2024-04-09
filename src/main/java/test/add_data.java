package test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import Util.HBN_Util;
import dao.nguoidung_dao;
import model.nguoidung;

public class add_data {
	public static void main(String[] args) {
		nguoidung_dao dao = new nguoidung_dao();
		dao.login("adm", "123");
//		try {
//			// Lấy sessionFactory từ HBN_Util
//			SessionFactory factory = HBN_Util.getSessionFactory();
//			if (factory != null) {
//				// Mở một session từ sessionFactory
//				Session session = factory.openSession();
//				Transaction tr = null;
//				try {
//					tr = session.beginTransaction();
//					nguoidung n = new nguoidung("Trần Quốc", "Thuận", "adm", "123", 20, "admin",
//							"quocthuan170304@gmail.com", "Quận 12", "0123456789", null);
//					session.persist(n);
//					// Commit giao dịch
//					tr.commit();
//				} catch (Exception e) {
//					// Nếu có lỗi, rollback giao dịch
//					if (tr != null) {
//						tr.rollback();
//					}
//					e.printStackTrace();
//				} finally {
//					// Đóng session sau khi hoàn tất
//					session.close();
//				}
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
	}

}
