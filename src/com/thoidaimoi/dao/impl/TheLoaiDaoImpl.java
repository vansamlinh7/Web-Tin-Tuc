package com.thoidaimoi.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thoidaimoi.dao.TheLoaiDao;
import com.thoidaimoi.entity.The_loai;

@Repository
public class TheLoaiDaoImpl implements TheLoaiDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	public List<The_loai> getAllTheLoai() {
		Session session = sessionFactory.getCurrentSession();
		List<The_loai> listThe_loais = session.createQuery("From theloai").list();
		return listThe_loais;
	}

}
