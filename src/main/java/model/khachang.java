package model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class khachang {
	@Id
	@GeneratedValue
	private int khachang_id;

	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String hoTen;

	private String email;

	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String address;

	@Column(nullable = false)
	private String phone_number;

	@OneToMany(mappedBy = "donhang_id")
	private List<donhang> donHangs;

	public khachang() {
	}

	public khachang(String hoTen, String email, String address, String phone_number,
			List<donhang> donHangs) {
		this.hoTen = hoTen;
		this.email = email;
		this.address = address;
		this.phone_number = phone_number;
		this.donHangs = donHangs;
	}

	public int getKhachang_id() {
		return khachang_id;
	}

	public void setKhachang_id(int khachang_id) {
		this.khachang_id = khachang_id;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public List<donhang> getDonHangs() {
		return donHangs;
	}

	public void setDonHangs(List<donhang> donHangs) {
		this.donHangs = donHangs;
	}

	@Override
	public String toString() {
		return "khachang [khachang_id=" + khachang_id + ", hoTen=" + hoTen + ", email=" + email + ", address=" + address
				+ ", phone_number=" + phone_number + ", donHangs=" + donHangs + "]";
	}
	

}
