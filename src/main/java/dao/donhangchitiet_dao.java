package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import Util.HBN_Util;
import model.donhangchitiet;

public class donhangchitiet_dao implements Dao_Interface<donhangchitiet> {
	@Override
	public boolean insert(donhangchitiet t) {
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
					// Tạo một đối tượng donhangchitiet mới từ thông tin được chuyển vào
					donhangchitiet n = new donhangchitiet(t.getDonhang(), t.getSanpham(), t.getSoluong(),
							t.getDongia());
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
					// Tìm kiếm donhangchitiet dựa trên id
					donhangchitiet n = session.find(donhangchitiet.class, id);
					// Xóa donhangchitiet từ cơ sở dữ liệu
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
	public boolean update(donhangchitiet t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<donhangchitiet> selectAll() {
		List<donhangchitiet> donhangchitietresult = null;
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
					// Lấy tất cả donhangchitiet từ cơ sở dữ liệu
					donhangchitietresult = session.createQuery("FROM donhangchitiet").getResultList();
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
		return donhangchitietresult;
	}

	@Override
	public donhangchitiet selectById(int id) {
		donhangchitiet n = null;
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
					// Tìm kiếm donhangchitiet dựa trên id
					n = session.find(donhangchitiet.class, id);
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
