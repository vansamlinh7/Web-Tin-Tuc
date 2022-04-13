package com.thoidaimoi.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thoidaimoi.dao.ChucVuDao;
import com.thoidaimoi.entity.Chuc_vu;

@Repository
public class ChucVuDaoImpl implements ChucVuDao{

	@Autowired
	private SessionFactory sessionFactory;
	public List<Chuc_vu> getAllChucVu() {
		Session session = sessionFactory.getCurrentSession();
		
		return session.createQuery("from chucvu").list();
	}

}
