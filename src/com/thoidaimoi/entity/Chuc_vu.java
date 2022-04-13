package com.thoidaimoi.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name = "chucvu")
public class Chuc_vu {

	@Id
	@GeneratedValue
	private int chucvu_id;

	@OneToMany(mappedBy = "chuc_vu", fetch = FetchType.EAGER)
	private List<Nguoi_dung> nguoi_dungs;

	@Column(name = "ten_chuc_vu	")
	private String ten_chuc_vu;

	public int getId() {
		return chucvu_id;
	}

	public void setId(int id) {
		this.chucvu_id = id;
	}

	public List<Nguoi_dung> getNguoi_dungs() {
		return nguoi_dungs;
	}

	public void setNguoi_dungs(List<Nguoi_dung> nguoi_dungs) {
		this.nguoi_dungs = nguoi_dungs;
	}

	public String getTen_chuc_vu() {
		return ten_chuc_vu;
	}

	public void setTen_chuc_vu(String ten_chuc_vu) {
		this.ten_chuc_vu = ten_chuc_vu;
	}

}
