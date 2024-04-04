package model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class donhang {
	@Id
	@GeneratedValue
	private int donhang_id;
	private double tongTien;
	private Date ngayDatHang;
	@OneToMany(mappedBy = "sanpham_id")
	private List<sanpham> sanphams;
	private String phuongThucThanhToan;

	public donhang() {
	}

	public donhang(double tongTien, Date ngayDatHang, List<sanpham> sanphams, String phuongThucThanhToan) {
		this.tongTien = tongTien;
		this.ngayDatHang = ngayDatHang;
		this.sanphams = sanphams;
		this.phuongThucThanhToan = phuongThucThanhToan;
	}

	public int getDonhang_id() {
		return donhang_id;
	}

	public void setDonhang_id(int donhang_id) {
		this.donhang_id = donhang_id;
	}

	public double getTongTien() {
		return tongTien;
	}

	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}

	public Date getNgayDatHang() {
		return ngayDatHang;
	}

	public void setNgayDatHang(Date ngayDatHang) {
		this.ngayDatHang = ngayDatHang;
	}

	public List<sanpham> getSanphams() {
		return sanphams;
	}

	public void setSanphams(List<sanpham> sanphams) {
		this.sanphams = sanphams;
	}

	public String getPhuongThucThanhToan() {
		return phuongThucThanhToan;
	}

	public void setPhuongThucThanhToan(String phuongThucThanhToan) {
		this.phuongThucThanhToan = phuongThucThanhToan;
	}

	@Override
	public String toString() {
		return "donhang [donhang_id=" + donhang_id + ", tongTien=" + tongTien + ", ngayDatHang=" + ngayDatHang
				+ ", sanphams=" + sanphams + ", phuongThucThanhToan=" + phuongThucThanhToan + "]";
	}

}
