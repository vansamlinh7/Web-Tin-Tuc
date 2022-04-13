package com.thoidaimoi.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thoidaimoi.dao.NguoiDungDao;
import com.thoidaimoi.entity.Nguoi_dung;

@Repository
public class NguoiDungDaoImpl implements NguoiDungDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Nguoi_dung> getAllNguoiDung() {
		Session session = sessionFactory.getCurrentSession();
		List<Nguoi_dung> listNguoiDungDaos= session.createQuery("From nguoidung").list();
		return listNguoiDungDaos;
	}

	public void addNguoiDung(Nguoi_dung nguoi_dung) {
		Session session = sessionFactory.getCurrentSession();
		session.save(nguoi_dung);
		
	}

	public void xoaNguoiDungById(int ID) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Nguoi_dung nguoi_dung = (Nguoi_dung) session.byId(Nguoi_dung.class).load(ID);
		session.delete(nguoi_dung);
	}

	public void suaNguoiDung(Nguoi_dung nguoi_dung) {
		Session session = sessionFactory.getCurrentSession();
		session.update(nguoi_dung);
		
	}

	public Nguoi_dung GetNguoiDungById(int ID) {
		Session session = sessionFactory.getCurrentSession();
		Nguoi_dung nguoi_dung = (Nguoi_dung) session.byId(Nguoi_dung.class).load(ID);
		return nguoi_dung;
		
	}
	@SuppressWarnings("unchecked")
	public Nguoi_dung loadByUserName(String username) {
		List<Nguoi_dung> nguoi_dungs = new ArrayList<Nguoi_dung>();
		nguoi_dungs = sessionFactory.getCurrentSession().createQuery("From nguoidung where username=?").setParameter(0, username).list();
		if (nguoi_dungs.size() > 0) {
			return nguoi_dungs.get(0);
		} else {
			return null;
		}
		
	}
}
