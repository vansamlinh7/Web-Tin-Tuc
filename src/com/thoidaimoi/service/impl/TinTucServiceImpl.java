package com.thoidaimoi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thoidaimoi.dao.TinTucDao;
import com.thoidaimoi.entity.Tin_tuc;
import com.thoidaimoi.service.TinTucService;

@Service
@Transactional
public class TinTucServiceImpl implements TinTucService{
	
	@Autowired
	private TinTucDao tinTucDao;
	
	public List<Tin_tuc> getAllTinTuc() {
		// TODO Auto-generated method stub
		return tinTucDao.getAllTinTuc();
	}

	public void addTinTuc(Tin_tuc tin_tuc) {
		// TODO Auto-generated method stub
		tinTucDao.addTinTuc(tin_tuc);
	}

	public void xoaTinTuc(int ID) {
		// TODO Auto-generated method stub
		tinTucDao.xoaTinTuc(ID);
	}

	public void suaTinTuc(Tin_tuc tin_tuc) {
		// TODO Auto-generated method stub
		tinTucDao.suaTinTuc(tin_tuc);
	}

	public Tin_tuc getTinTucByID(int ID) {
		// TODO Auto-generated method stub
		return tinTucDao.getTinTucByID(ID);
	}

	public List<Tin_tuc> getListHotNews(int limit, int position) {
		// TODO Auto-generated method stub
		return tinTucDao.getListHotNews(limit, position);
	}
	public List<Tin_tuc> getListTopViews(int limit, int position) {
		// TODO Auto-generated method stub
		return tinTucDao.getListTopViews(limit, position);
	}

	public List<Tin_tuc> getListNav(int limit) {
		// TODO Auto-generated method stub
		return tinTucDao.getListNav(limit);
	}

	public List<Tin_tuc> getTinTucByTheLoai(long idTheLoai) {
		// TODO Auto-generated method stub
		return tinTucDao.getTinTucByTheLoai(idTheLoai);
	}
	public int getCountView(int ID) {
		// TODO Auto-generated method stub
		return tinTucDao.getCountView(ID);
	}
	public int updateCountView(int ID,int view) {
		// TODO Auto-generated method stub
		return tinTucDao.updateCountView(ID, view);
	}
	public List<Tin_tuc> findPostbyCategory(int ID){
		return tinTucDao.findPostbyCategory(ID);
	}
	public List<Tin_tuc> getPostByCategory(int ID, int offset, int limit){
		return tinTucDao.getPostByCategory(ID,offset,limit);
	}
	public long countPostbyCategory(int ID) {
		return tinTucDao.countPostbyCategory(ID);
	}

	@Override
	public Object findTeamByName(String pSearchTerm) {
		// TODO Auto-generated method stub
		return null;
//		return	tinTucDao.findPostbyName(String pSearchTerm);
	}
}
