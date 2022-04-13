package com.thoidaimoi.service;

import java.util.List;

import com.thoidaimoi.entity.Nguoi_dung;

public interface NguoiDungService {

	public List<Nguoi_dung> getAllNguoiDung();
	public void addNguoiDung(Nguoi_dung nguoi_dung);
	public void xoaNguoiDungById(int ID);
	public Nguoi_dung GetNguoiDungById(int ID);
	public void suaNguoiDung(Nguoi_dung nguoi_dung);
}
