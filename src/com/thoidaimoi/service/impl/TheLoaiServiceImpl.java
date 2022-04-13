package com.thoidaimoi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thoidaimoi.dao.TheLoaiDao;
import com.thoidaimoi.entity.The_loai;
import com.thoidaimoi.service.TheLoaiService;

@Service
@Transactional
public class TheLoaiServiceImpl implements TheLoaiService{

	@Autowired
	private TheLoaiDao theLoaiDao;
	
	public List<The_loai> getAllTheLoai() {
		// TODO Auto-generated method stub
		return theLoaiDao.getAllTheLoai();
	}

}
