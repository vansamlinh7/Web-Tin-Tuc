package com.thoidaimoi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thoidaimoi.dao.NguoiDungDao;
import com.thoidaimoi.entity.Nguoi_dung;
import com.thoidaimoi.service.NguoiDungService;

@Service
@Transactional
public class NguoiDungServiceImpl implements NguoiDungService{

	@Autowired
	private NguoiDungDao nguoiDungDao;
	
	
	public List<Nguoi_dung> getAllNguoiDung() {
		// TODO Auto-generated method stub
		return nguoiDungDao.getAllNguoiDung();
	}

	
	public void addNguoiDung(Nguoi_dung nguoi_dung) {
		// TODO Auto-generated method stub
		nguoiDungDao.addNguoiDung(nguoi_dung);
	}

	public void xoaNguoiDungById(int ID) {
		// TODO Auto-generated method stub
		nguoiDungDao.xoaNguoiDungById(ID);
	}


	public void suaNguoiDung(Nguoi_dung nguoi_dung) {
		// TODO Auto-generated method stub
		nguoiDungDao.suaNguoiDung(nguoi_dung);
	}


	public Nguoi_dung GetNguoiDungById(int ID) {
		// TODO Auto-generated method stub
		return nguoiDungDao.GetNguoiDungById(ID);
	}

}
