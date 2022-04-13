package com.thoidaimoi.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thoidaimoi.dao.TinTucDao;
import com.thoidaimoi.entity.Tin_tuc;

@Repository
public class TinTucDaoImpl implements TinTucDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Tin_tuc> getAllTinTuc() {
		Session session = sessionFactory.getCurrentSession();
		List<Tin_tuc> listTin_tucs = session.createQuery("From tintuc").list();
		return listTin_tucs;
	}

	public List<Tin_tuc> showTinTucByID(int ID) {
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session.createQuery("From tintuc where ID_theloai= :ID");
		query.setParameter("ID", ID);
		
		List<Tin_tuc> tin_tucs = query.list();
		return tin_tucs;
	}

	public void addTinTuc(Tin_tuc tin_tuc) {
		Session session = sessionFactory.getCurrentSession();
		session.save(tin_tuc);
		
	}

	public void xoaTinTuc(int ID) {
		Session session = sessionFactory.getCurrentSession();
		Tin_tuc tin_tuc = (Tin_tuc) session.byId(Tin_tuc.class).load(ID);
		session.delete(tin_tuc);
	}

	public void suaTinTuc(Tin_tuc tin_tuc) {
		Session session = sessionFactory.getCurrentSession();
		session.update(tin_tuc);
		
	}

	public Tin_tuc getTinTucByID(int ID) {
		Session session = sessionFactory.getCurrentSession();
		Tin_tuc tin_tuc = (Tin_tuc) session.byId(Tin_tuc.class).load(ID);
		return tin_tuc;
	}

	public List<Tin_tuc> getListHotNews(int limit, int position) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM tintuc t ORDER BY t.id DESC");
		query.setMaxResults(limit);
		query.setFirstResult(position);
		List<Tin_tuc> tin_tucs = query.list();
		return tin_tucs;
	}
	
	public List<Tin_tuc> getListTopViews(int limit, int position) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM tintuc t ORDER BY t.so_luot_xem DESC");
		query.setMaxResults(limit);
		query.setFirstResult(position);
		List<Tin_tuc> tin_tucs = query.list();
		return tin_tucs;
	}

	public List<Tin_tuc> getListNav(int limit) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("From tintuc ORDER BY ngay_dang ASC");
		query.setMaxResults(limit);
		List<Tin_tuc> tin_tucs = query.list();
		return tin_tucs;
	}

	public List<Tin_tuc> getTinTucByTheLoai(long idTheLoai) {
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session.createQuery("From tintuc where ID_theloai= :idTheLoai");
		query.setLong("idTheLoai", idTheLoai);
		List<Tin_tuc> tin_tucs = query.list();
		return tin_tucs;
	}
	
	public int getCountView(int ID) {
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session.createQuery("Select so_luot_xem From tintuc where ID= :ID");
		query.setLong("ID", ID);
		int so_luot_xem = (int) query.uniqueResult();
		return so_luot_xem;
	}
	public int updateCountView(int ID,int view) {
		System.out.println(view);
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session.createQuery("UPDATE tintuc SET so_luot_xem= :VIEW " + "WHERE ID= :ID");
		query.setParameter("VIEW", view);
		query.setParameter("ID", ID);
		int result = query.executeUpdate();
		return result;
	}
	public List<Tin_tuc> findPostbyCategory(int ID){
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session.createQuery("From tintuc where ID_theloai= :ID ORDER BY ngay_dang DESC");
		query.setLong("ID", ID);
		List<Tin_tuc> tin_tucs = query.list();
		return tin_tucs;
	}
	public long countPostbyCategory(int ID) {
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session.createQuery("select count(*) From tintuc where ID_theloai= :ID");
		query.setLong("ID", ID);
		long count = (long) query.uniqueResult();
		return count;
	}
	public List<Tin_tuc> getPostByCategory(int ID, int offset, int limit) {
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session.createQuery("From tintuc where ID_theloai= :ID ORDER BY ngay_dang DESC" );
		query.setLong("ID", ID);
		query.setFirstResult(offset);
		query.setMaxResults(limit);
		List<Tin_tuc> tin_tucs = query.list();
		return tin_tucs;
	}

	@Override
	public List<Tin_tuc> searchPostByName() {
		// TODO Auto-generated method stub
		return null;
	}

	
	

}
