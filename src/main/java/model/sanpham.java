package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class sanpham {
	@Id
	@GeneratedValue
	private int maSanPham;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String tenSanPham;
	private int soLuong;
	private double giaGoc;
	private double giaHienTai;
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String moTaSanPham;
	public sanpham() {
	}
	public sanpham(String tenSanPham, int soLuong, double giaGoc, double giaHienTai, String moTaSanPham) {
		this.tenSanPham = tenSanPham;
		this.soLuong = soLuong;
		this.giaGoc = giaGoc;
		this.giaHienTai = giaHienTai;
		this.moTaSanPham = moTaSanPham;
	}
	public int getMaSanPham() {
		return maSanPham;
	}
	public void setMaSanPham(int maSanPham) {
		this.maSanPham = maSanPham;
	}
	public String getTenSanPham() {
		return tenSanPham;
	}
	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public double getGiaGoc() {
		return giaGoc;
	}
	public void setGiaGoc(double giaGoc) {
		this.giaGoc = giaGoc;
	}
	public double getGiaHienTai() {
		return giaHienTai;
	}
	public void setGiaHienTai(double giaHienTai) {
		this.giaHienTai = giaHienTai;
	}
	public String getMoTaSanPham() {
		return moTaSanPham;
	}
	public void setMoTaSanPham(String moTaSanPham) {
		this.moTaSanPham = moTaSanPham;
	}
	@Override
	public String toString() {
		return "sanpham [maSanPham=" + maSanPham + ", tenSanPham=" + tenSanPham + ", soLuong=" + soLuong + ", giaGoc="
				+ giaGoc + ", giaHienTai=" + giaHienTai + ", moTaSanPham=" + moTaSanPham + "]";
	}
	
}
