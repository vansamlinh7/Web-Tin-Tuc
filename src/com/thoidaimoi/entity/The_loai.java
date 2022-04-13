package com.thoidaimoi.entity;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name = "theloai")
public class The_loai {

	@Id
	@GeneratedValue	
	private int ID;
	
	@Column(name = "ten_the_loai")
	private String ten_the_loai;
	
	@OneToMany(mappedBy = "the_loai", fetch = FetchType.EAGER)
 	private Set<Tin_tuc> tin_tucs = new HashSet<Tin_tuc>();

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getTen_the_loai() {
		return ten_the_loai;
	}

	public void setTen_the_loai(String ten_the_loai) {
		this.ten_the_loai = ten_the_loai;
	}
	
	public Set<Tin_tuc> getTin_tucs() {
		return tin_tucs;
	}

	public void setTin_tucs(Set<Tin_tuc> tin_tucs) {
		this.tin_tucs = tin_tucs;
	}
	
	
}
