package com.thoidaimoi.controller;

import java.util.List;
import java.lang.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.thoidaimoi.entity.The_loai;
import com.thoidaimoi.entity.Tin_tuc;
import com.thoidaimoi.service.TheLoaiService;
import com.thoidaimoi.service.TinTucService;

@Controller
public class HomeController {

	@Autowired
	private TheLoaiService theLoaiService;
	
	@Autowired
	private TinTucService tinTucService;
	
	@RequestMapping(value = {"/","/home","/index"})
	private String homePage(Model model, @ModelAttribute("tintuc") Tin_tuc tin_tuc) {
		model.addAttribute("listtheloai", theLoaiService.getAllTheLoai());
		model.addAttribute("tintuc", tinTucService.getListHotNews(2,1)) ;
		model.addAttribute("tintucs", tinTucService.getListHotNews(1,0));
		model.addAttribute("NewsTopRight", tinTucService.getListHotNews(6,3));
		model.addAttribute("worldnews", tinTucService.getListHotNews(4,3));
		model.addAttribute("topview", tinTucService.getListTopViews(3,0));
		model.addAttribute("trongnuocindex", tinTucService.getPostByCategory(1,1,4));
		model.addAttribute("thegioiindex", tinTucService.getPostByCategory(2,1,4));
		model.addAttribute("thethaoindex", tinTucService.getPostByCategory(3,1,4));
		model.addAttribute("giaitriindex", tinTucService.findPostbyCategory(4));
		model.addAttribute("sohoaindex", tinTucService.findPostbyCategory(10));
		model.addAttribute("vanhoaindex", tinTucService.findPostbyCategory(7));
		model.addAttribute("kinhdoanhindex", tinTucService.findPostbyCategory(5));
		model.addAttribute("khoahocindex", tinTucService.findPostbyCategory(9));
		model.addAttribute("dulichindex", tinTucService.findPostbyCategory(8));
		model.addAttribute("doisongindex", tinTucService.findPostbyCategory(11));
		model.addAttribute("xeindex", tinTucService.findPostbyCategory(14));
		model.addAttribute("giaoducindex", tinTucService.findPostbyCategory(13));
		model.addAttribute("phapluatindex", tinTucService.findPostbyCategory(6));
	
		
		return "layout/index";
	}
	
	@RequestMapping(value = "/theloai/{id}", method = RequestMethod.GET)
	public String homePage(Model model,@PathVariable("id") int ID) {
		
		model.addAttribute("listtheloai", theLoaiService.getAllTheLoai());
//		model.addAttribute("listtintuc", tinTucService.showTinTucByID(ID));
		return "layout/nhomtin";

	}
	@RequestMapping(value="/lienhe", method = RequestMethod.GET)
	public String contactPage(Model model) {
		model.addAttribute("listtheloai", theLoaiService.getAllTheLoai());
		return "layout/contact";
	}
	
	@RequestMapping(value = "/chitiet/{id}", method = RequestMethod.GET)
	public String viewProduct(ModelMap mm, @PathVariable("id") int id) {
		int view = tinTucService.getCountView(id);
		view+=1;
		System.out.println(view);
		tinTucService.updateCountView(id, view);
		mm.put("listtheloai", theLoaiService.getAllTheLoai());
		mm.addAttribute("NewsTopRight", tinTucService.getListHotNews(6,3));
		mm.put("tintucchitiet", tinTucService.getTinTucByID(id));
		mm.addAttribute("topview", tinTucService.getListTopViews(4,0));
		
		
		return "layout/singlePost";
	}
	@RequestMapping(value="/category/{id}", method = RequestMethod.GET)
	public String getPostByCategory(Model model, @PathVariable("id") int id, Integer page) {
		int limit = 3;
		long total_record = tinTucService.countPostbyCategory(id);
		int start;
		System.out.println(total_record);
		double totalPage = Math.round(total_record/limit)+1;
		System.out.println(totalPage);
		if(page==null) {
			page=1;
		}
		if(page>totalPage) {
			page=1;
		}
		start = (page-1)*limit;
		model.addAttribute("listtheloai", theLoaiService.getAllTheLoai());
		model.addAttribute("NewsTopRight", tinTucService.getListHotNews(6,3));
		model.addAttribute("topview", tinTucService.getListTopViews(4,0));
		model.addAttribute("postsById", tinTucService.getPostByCategory(id,start,limit));
		model.addAttribute("totalPage",totalPage );
		model.addAttribute("tintucs", tinTucService.getListHotNews(3,0));
		return "layout/category";
	}
}
