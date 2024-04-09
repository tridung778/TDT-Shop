package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import Util.HBN_Util;
import model.nguoidung;

public class nguoidung_dao implements Dao_Interface<nguoidung> {

	@Override
	public boolean insert(nguoidung t) {
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
					// Tạo một đối tượng nguoidung mới từ thông tin được chuyển vào
					nguoidung n = new nguoidung(t.getHoDem(), t.getTen(), t.getTaiKhoan(), t.getMatKhau(), t.getTuoi(),
							t.getChucVu(), t.getEmail(), t.getDiaChi(), t.getSoDienThoai(), t.getGiohang());
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
					// Tìm kiếm nguoidung dựa trên id
					nguoidung n = session.find(nguoidung.class, id);
					// Xóa nguoidung từ cơ sở dữ liệu
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
	public boolean update(nguoidung t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<nguoidung> selectAll() {
		List<nguoidung> nguoidungresult = null;
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
					// Lấy tất cả nguoidung từ cơ sở dữ liệu
					nguoidungresult = session.createQuery("FROM nguoidung").getResultList();
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
		return nguoidungresult;
	}

	@Override
	public nguoidung selectById(int id) {
		nguoidung n = null;
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
					// Tìm kiếm nguoidung dựa trên id
					n = session.find(nguoidung.class, id);
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

	public nguoidung login(String username, String password) {
		nguoidung n = null;

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
					String hql = "FROM nguoidung WHERE taiKhoan = :a AND matKhau = :b";
					Query<nguoidung> query = session.createQuery(hql, nguoidung.class);
					query.setParameter("a", username);
					query.setParameter("b", password);
					n = query.getSingleResult();
					// Commit giao dịch
					tr.commit();
					System.out.println(n);
				} catch (Exception e) {
					// Nếu có lỗi, rollback giao dịch
					if (tr != null) {
						tr.rollback();
					}
				} finally {
					// Đóng session sau khi hoàn tất
					session.close();
				}
			}
		} catch (Exception e) {
		}

		return n;
	}

}
