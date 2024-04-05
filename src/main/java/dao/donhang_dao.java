package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import Util.HBN_Util;
import model.donhang;

public class donhang_dao implements Dao_Interface<donhang> {

	@Override
	public boolean insert(donhang t) {
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
					// Tạo một đối tượng donhang mới từ thông tin được chuyển vào
					donhang n = new donhang(t.getTongTien(), t.getNgayDatHang(), t.getSanphams(),
							t.getPhuongThucThanhToan());
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
					// Tìm kiếm donhang dựa trên id
					donhang n = session.find(donhang.class, id);
					// Xóa donhang từ cơ sở dữ liệu
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
	public boolean update(donhang t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<donhang> selectAll() {
		List<donhang> donhangresult = null;
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
					// Lấy tất cả donhang từ cơ sở dữ liệu
					donhangresult = session.createQuery("FROM donhang").getResultList();
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
		return donhangresult;
	}

	@Override
	public donhang selectById(int id) {
		donhang n = null;
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
					// Tìm kiếm donhang dựa trên id
					n = session.find(donhang.class, id);
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
