package com.thoidaimoi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thoidaimoi.dao.ChucVuDao;
import com.thoidaimoi.entity.Chuc_vu;
import com.thoidaimoi.service.ChucVuService;

@Service
@Transactional
public class ChucVuServiceImpl implements ChucVuService{

	@Autowired
	private ChucVuDao chucVuDao;
	
	public List<Chuc_vu> getAllChucVu() {
		// TODO Auto-generated method stub
		return chucVuDao.getAllChucVu();
	}

}
