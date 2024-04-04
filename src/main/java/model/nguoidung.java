package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class nguoidung {
	@Id
	@GeneratedValue
	private int nguoidung_id;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String hoDem;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String ten;
	private String taiKhoan;
	private String matKhau;
	private int tuoi;
	private String chucVu;
	private String email;
	private String diaChi;
	private String soDienThoai;

	public nguoidung() {
	}

	public nguoidung(String hoDem, String ten, String taiKhoan, String matKhau, int tuoi, String chucVu, String email,
			String diaChi, String soDienThoai) {
		this.hoDem = hoDem;
		this.ten = ten;
		this.taiKhoan = taiKhoan;
		this.matKhau = matKhau;
		this.tuoi = tuoi;
		this.chucVu = chucVu;
		this.email = email;
		this.diaChi = diaChi;
		this.soDienThoai = soDienThoai;
	}

	public int getNguoidung_id() {
		return nguoidung_id;
	}

	public void setNguoidung_id(int nguoidung_id) {
		this.nguoidung_id = nguoidung_id;
	}

	public String getHoDem() {
		return hoDem;
	}

	public void setHoDem(String hoDem) {
		this.hoDem = hoDem;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getTaiKhoan() {
		return taiKhoan;
	}

	public void setTaiKhoan(String taiKhoan) {
		this.taiKhoan = taiKhoan;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public int getTuoi() {
		return tuoi;
	}

	public void setTuoi(int tuoi) {
		this.tuoi = tuoi;
	}

	public String getChucVu() {
		return chucVu;
	}

	public void setChucVu(String chucVu) {
		this.chucVu = chucVu;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	@Override
	public String toString() {
		return "nguoidung [hoDem=" + hoDem + ", ten=" + ten + ", taiKhoan=" + taiKhoan
				+ ", matKhau=" + matKhau + ", tuoi=" + tuoi + ", chucVu=" + chucVu + ", email=" + email + ", diaChi="
				+ diaChi + ", soDienThoai=" + soDienThoai + "]";
	}

}
