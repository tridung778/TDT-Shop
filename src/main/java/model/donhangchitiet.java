package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class donhangchitiet {

	@Id
	@GeneratedValue
	private Long order_detail_id;

	@ManyToOne
	@JoinColumn(name = "donhang_id")
	private donhang donhang;

	@ManyToOne
	@JoinColumn(name = "sanpham_id", nullable = false)
	private sanpham sanpham;

	@Column(nullable = false)
	private int soluong;

	@Column(nullable = false)
	private double dongia;

	public donhangchitiet() {
	}

	public donhangchitiet(model.donhang donhang, model.sanpham sanpham, int soluong, double dongia) {
		this.donhang = donhang;
		this.sanpham = sanpham;
		this.soluong = soluong;
		this.dongia = dongia;
	}

	public Long getOrder_detail_id() {
		return order_detail_id;
	}

	public void setOrder_detail_id(Long order_detail_id) {
		this.order_detail_id = order_detail_id;
	}

	public donhang getDonhang() {
		return donhang;
	}

	public void setDonhang(donhang donhang) {
		this.donhang = donhang;
	}

	public sanpham getSanpham() {
		return sanpham;
	}

	public void setSanpham(sanpham sanpham) {
		this.sanpham = sanpham;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public double getDongia() {
		return dongia;
	}

	public void setDongia(double dongia) {
		this.dongia = dongia;
	}

	@Override
	public String toString() {
		return "donhangchitiet [order_detail_id=" + order_detail_id + ", donhang=" + donhang + ", sanpham=" + sanpham
				+ ", soluong=" + soluong + ", dongia=" + dongia + "]";
	}

}
