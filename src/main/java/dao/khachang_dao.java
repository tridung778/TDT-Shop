package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import Util.HBN_Util;
import model.khachang;

public class khachang_dao implements Dao_Interface<khachang> {
	@Override
	public boolean insert(khachang t) {
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
					// Tạo một đối tượng khachang mới từ thông tin được chuyển vào
					khachang n = new khachang(t.getHoTen(), t.getEmail(), t.getAddress(), t.getPhone_number(),
							t.getDonHangs());
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
					// Tìm kiếm khachang dựa trên id
					khachang n = session.find(khachang.class, id);
					// Xóa khachang từ cơ sở dữ liệu
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
	public boolean update(khachang t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<khachang> selectAll() {
		List<khachang> khachangresult = null;
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
					// Lấy tất cả khachang từ cơ sở dữ liệu
					khachangresult = session.createQuery("FROM khachang").getResultList();
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
		return khachangresult;
	}

	@Override
	public khachang selectById(int id) {
		khachang n = null;
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
					// Tìm kiếm khachang dựa trên id
					n = session.find(khachang.class, id);
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
