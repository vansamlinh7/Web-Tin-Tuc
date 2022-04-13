package com.thoidaimoi.service;

import java.util.List;

import com.thoidaimoi.entity.The_loai;
import com.thoidaimoi.entity.Tin_tuc;

public interface TinTucService {

	public Tin_tuc getTinTucByID(int ID);
	public List<Tin_tuc> getAllTinTuc();
	public void addTinTuc(Tin_tuc tin_tuc);
	public void xoaTinTuc(int ID);
	public void suaTinTuc(Tin_tuc tin_tuc);
	public List<Tin_tuc> getListHotNews(int limit, int position);
	public List<Tin_tuc> getListTopViews(int limit, int position);
	public List<Tin_tuc> getListNav(int limit);
	public int getCountView(int ID);
	public int updateCountView(int ID,int view);
	public List<Tin_tuc> getTinTucByTheLoai(long idTheLoai);
	public List<Tin_tuc> findPostbyCategory(int ID);
	public List<Tin_tuc> getPostByCategory(int ID, int offset, int limit);
	public long countPostbyCategory(int ID);
	public Object findTeamByName(String pSearchTerm);
}
