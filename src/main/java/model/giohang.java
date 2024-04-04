package model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class giohang {
	@OneToOne
	@JoinColumn(name = "nguoidung_id")
	private nguoidung nguoidung_id;
	@OneToMany(mappedBy = "maSanPham")
	private List<sanpham> sanphams;

	public giohang() {
	}

	public giohang(nguoidung nguoidung_id, List<sanpham> sanphams) {
		super();
		this.nguoidung_id = nguoidung_id;
		this.sanphams = sanphams;
	}

	public nguoidung getNguoidung_id() {
		return nguoidung_id;
	}

	public void setNguoidung_id(nguoidung nguoidung_id) {
		this.nguoidung_id = nguoidung_id;
	}

	public List<sanpham> getSanphams() {
		return sanphams;
	}

	public void setSanphams(List<sanpham> sanphams) {
		this.sanphams = sanphams;
	}

}
