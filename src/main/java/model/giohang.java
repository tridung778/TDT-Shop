package model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class giohang {
	@Id
	@GeneratedValue
	private int id;
	@OneToMany
	private List<sanpham> sanphams;

	public giohang() {
	}

	public giohang(List<sanpham> sanphams) {
		super();
		this.sanphams = sanphams;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<sanpham> getSanphams() {
		return sanphams;
	}

	public void setSanphams(List<sanpham> sanphams) {
		this.sanphams = sanphams;
	}

}
