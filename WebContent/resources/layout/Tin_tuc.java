package com.thoidaimoi.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

@Entity(name = "tintuc")
public class Tin_tuc {

	@Id
	@GeneratedValue
	@Column(name = "ID")
	private int id;

	@Column(name = "tieu_de")
	private String tieu_de;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@Column(name = "ngay_dang")
	private Date ngay_dang;

	@Column(name = "mo_ta")
	private String mo_ta;
	
	@Column(name = "noi_dung")
	private String noi_dung;
	
	@Column(name = "tac_gia")
	private String tac_gia;

	@Column(name = "hinh_anh")
	private String hinh_anh;

	@Column(name = "so_luot_xem")
	private int so_luot_xem;
	
//	@Column(name = "tag")
//	private String tag;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "ID_theloai")
	private The_loai the_loai;
	
	@Transient
	private MultipartFile file;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTieu_de() {
		return tieu_de;
	}

	public void setTieu_de(String tieu_de) {
		this.tieu_de = tieu_de;
	}

	public Date getNgay_dang() {
		return ngay_dang;
	}

	public void setNgay_dang(Date ngay_dang) {
		this.ngay_dang = ngay_dang;
	}

	public String getMo_ta() {
		return mo_ta;
	}

	public void setMo_ta(String mo_ta) {
		this.mo_ta = mo_ta;
	}

	public String getHinh_anh() {
		return hinh_anh;
	}

	public void setHinh_anh(String hinh_anh) {
		this.hinh_anh = hinh_anh;
	}

	public int getSo_luot_xem() {
		return so_luot_xem;
	}

	public void setSo_luot_xem(int so_luot_xem) {
		this.so_luot_xem = so_luot_xem;
	}

	public The_loai getThe_loai() {
		return the_loai;
	}

	public void setThe_loai(The_loai the_loai) {
		this.the_loai = the_loai;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getNoi_dung() {
		return noi_dung;
	}

	public void setNoi_dung(String noi_dung) {
		this.noi_dung = noi_dung;
	}

	public String getTac_gia() {
		return tac_gia;
	}

	public void setTac_gia(String tac_gia) {
		this.tac_gia = tac_gia;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}
	
}
