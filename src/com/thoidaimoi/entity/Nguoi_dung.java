package com.thoidaimoi.entity;



import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

@Entity(name= "nguoidung")
public class Nguoi_dung {

	@Id
	@GeneratedValue
	private int id;
	
	@Size(min = 6, max = 12) 
	@Column(name = "ten_dang_nhap")
	private String username;
	
	@Size(min = 6, max = 12)
	@Column(name = "mat_khau")
	private String password;
	
	@ManyToOne /* (cascade = CascadeType.ALL,fetch = FetchType.LAZY) */
	@JoinColumn(name= "chucvu_id")
	private Chuc_vu chuc_vu;
	
	@Column(name = "ho_va_ten")
	private String fullname;
	
	@Column(name = "email")
	private String email;
	
	@Size(min=1, max = 50)
	@Column(name = "hinh_anh")
	private String hinh_anh;

	@Transient
	private MultipartFile file;
	
	public Nguoi_dung() {
		
	}
	

	public Nguoi_dung(int id, String username, String password, Chuc_vu chuc_vu, String fullname, String email,
			String hinh_anh, MultipartFile file) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.chuc_vu = chuc_vu;
		this.fullname = fullname;
		this.email = email;
		this.hinh_anh = hinh_anh;
		this.file = file;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Chuc_vu getChuc_vu() {
		return chuc_vu;
	}

	public void setChuc_vu(Chuc_vu chuc_vu) {
		this.chuc_vu = chuc_vu;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHinh_anh() {
		return hinh_anh;
	}

	public void setHinh_anh(String hinh_anh) {
		this.hinh_anh = hinh_anh;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	
	
	
}
