package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import Util.HBN_Util;
import model.giohang;

public class giohang_dao implements Dao_Interface<giohang> {
	@Override
	public boolean insert(giohang t) {
		try {
			// Lấy sessionFactory từ HBN_Util
			SessionFactory factory = HBN_Util.getSessionFactory();
			if (factory != null) {
				// Mở một session từ sessionFactory
				Session session = factory.openSession();
				Transaction tr = null;
				try {
					// Bắt đầu giao dịch
					tr = session.beginTransaction();
					// Tạo một đối tượng giohang mới từ thông tin được chuyển vào
					giohang n = new giohang(t.getNguoidung_id(), t.getSanphams());
					// Lưu đối tượng vào cơ sở dữ liệu
					session.persist(n);
					// Commit giao dịch
					tr.commit();
					return true;
				} catch (Exception e) {
					// Nếu có lỗi, rollback giao dịch
					if (tr != null) {
						tr.rollback();
					}
					e.printStackTrace();
				} finally {
					// Đóng session sau khi hoàn tất
					session.close();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean delete(int id) {
		try {
			// Lấy sessionFactory từ HBN_Util
			SessionFactory factory = HBN_Util.getSessionFactory();
			if (factory != null) {
				// Mở một session từ sessionFactory
				Session session = factory.openSession();
				Transaction tr = null;
				try {
					// Bắt đầu giao dịch
					tr = session.beginTransaction();
					// Tìm kiếm giohang dựa trên id
					giohang n = session.find(giohang.class, id);
					// Xóa giohang từ cơ sở dữ liệu
					session.remove(n);
					// Commit giao dịch
					tr.commit();
					return true;
				} catch (Exception e) {
					// Nếu có lỗi, rollback giao dịch
					if (tr != null) {
						tr.rollback();
					}
					e.printStackTrace();
				} finally {
					// Đóng session sau khi hoàn tất
					session.close();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean update(giohang t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<giohang> selectAll() {
		List<giohang> giohangresult = null;
		try {
			// Lấy sessionFactory từ HBN_Util
			SessionFactory factory = HBN_Util.getSessionFactory();
			if (factory != null) {
				// Mở một session từ sessionFactory
				Session session = factory.openSession();
				Transaction tr = null;
				try {
					// Bắt đầu giao dịch
					tr = session.beginTransaction();
					// Lấy tất cả giohang từ cơ sở dữ liệu
					giohangresult = session.createQuery("FROM giohang").getResultList();
					// Commit giao dịch
					tr.commit();
				} catch (Exception e) {
					// Nếu có lỗi, rollback giao dịch
					if (tr != null) {
						tr.rollback();
					}
					e.printStackTrace();
				} finally {
					// Đóng session sau khi hoàn tất
					session.close();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return giohangresult;
	}

	@Override
	public giohang selectById(int id) {
		giohang n = null;
		try {
			// Lấy sessionFactory từ HBN_Util
			SessionFactory factory = HBN_Util.getSessionFactory();
			if (factory != null) {
				// Mở một session từ sessionFactory
				Session session = factory.openSession();
				Transaction tr = null;
				try {
					// Bắt đầu giao dịch
					tr = session.beginTransaction();
					// Tìm kiếm giohang dựa trên id
					n = session.find(giohang.class, id);
					// Commit giao dịch
					tr.commit();
					return n;
				} catch (Exception e) {
					// Nếu có lỗi, rollback giao dịch
					if (tr != null) {
						tr.rollback();
					}
					e.printStackTrace();
				} finally {
					// Đóng session sau khi hoàn tất
					session.close();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n;
	}
}
