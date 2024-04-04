package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import Util.HBN_Util;
import model.nguoidung;

public class nguoidung_dao implements Dao_Interface<nguoidung> {

	@Override
	public boolean insert(nguoidung t) {
		try {
			SessionFactory factory = HBN_Util.getSessionFactory();
			if (factory != null) {
				Session session = factory.openSession();
				Transaction tr = null;
				try {
					tr = session.beginTransaction();
					// thao tac truy van o day
					nguoidung n = new nguoidung(t.getHoDem(), t.getTen(), t.getTaiKhoan(), t.getMatKhau(), t.getTuoi(),
							t.getChucVu(), t.getEmail(), t.getDiaChi(), t.getSoDienThoai());
					session.persist(n);
					tr.commit();
					return true;
				} catch (Exception e) {
					if (tr != null) {
						tr.rollback();
					}
					e.printStackTrace();
				} finally {
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
			SessionFactory factory = HBN_Util.getSessionFactory();
			if (factory != null) {
				Session session = factory.openSession();
				Transaction tr = null;
				try {
					tr = session.beginTransaction();
					// thao tac truy van o day
					nguoidung n = session.find(nguoidung.class, id);
					session.remove(n);
					tr.commit();
					return true;
				} catch (Exception e) {
					if (tr != null) {
						tr.rollback();
					}
					e.printStackTrace();
				} finally {
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
			SessionFactory factory = HBN_Util.getSessionFactory();
			if (factory != null) {
				Session session = factory.openSession();
				Transaction tr = null;
				try {
					tr = session.beginTransaction();
					// thao tac truy van o day
					nguoidungresult = session.createQuery("FROM nguoidung").getResultList();
					tr.commit();
				} catch (Exception e) {
					if (tr != null) {
						tr.rollback();
					}
					e.printStackTrace();
				} finally {
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
			SessionFactory factory = HBN_Util.getSessionFactory();
			if (factory != null) {
				Session session = factory.openSession();
				Transaction tr = null;
				try {
					tr = session.beginTransaction();
					n = session.find(nguoidung.class, id);
					tr.commit();
					return n;
				} catch (Exception e) {
					if (tr != null) {
						tr.rollback();
					}
					e.printStackTrace();
				} finally {
					session.close();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n;
	}

}
