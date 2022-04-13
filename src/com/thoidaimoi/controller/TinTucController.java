package com.thoidaimoi.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.thoidaimoi.entity.Tin_tuc;
import com.thoidaimoi.service.TheLoaiService;
import com.thoidaimoi.service.TinTucService;

@Controller
public class TinTucController {

	@Autowired
	private TinTucService tinTucService;
	
	@Autowired
	private TheLoaiService theLoaiService;
	
	@RequestMapping("/danh-sach-tin-tuc")
	public String getAllTinTuc(Model model) {
		model.addAttribute("listtintuc", tinTucService.getAllTinTuc());
		return "admin/danh-sach-tin-tuc";
	}
	
	@RequestMapping(value = {"/them-tin-tuc"}, method = RequestMethod.GET)
	public String addTinTuc(Model model) {
		model.addAttribute("listtheloai", theLoaiService.getAllTheLoai());
		model.addAttribute("tintuc", new Tin_tuc());
		return "admin/them-tin-tuc";
		
	}
	
	@RequestMapping(value = {"/them-tin-tuc"}, method = RequestMethod.POST)
	public String addTinTuc(@ModelAttribute("tintuc") Tin_tuc tintuc) {
		
		MultipartFile multipartFile = tintuc.getFile();
		File file = new File("C:\\Users\\LApTops\\Desktop\\Study\\Java Project (Github)\\FasttrackSe_1902\\Pham Minh Van\\DA-Website\\WebContent\\resources\\image\\" + multipartFile.getOriginalFilename());
		try {
			FileOutputStream fileOutputStream = new FileOutputStream(file);
			fileOutputStream.write(multipartFile.getBytes());
			fileOutputStream.close();
			
			tintuc.setHinh_anh(multipartFile.getOriginalFilename());
		} catch(FileNotFoundException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		tinTucService.addTinTuc(tintuc);
		return "redirect:/danh-sach-tin-tuc";
	}
	@RequestMapping(value = {"/xoa-tin-tuc/{ID}"}, method = RequestMethod.GET)
	public String xoaTinTuc(@PathVariable("ID") int ID) {
		tinTucService.xoaTinTuc(ID);
		return "redirect:/danh-sach-tin-tuc";
	}
	
	@RequestMapping(value = {"/sua-tin-tuc/{ID}"}, method = RequestMethod.GET)
	public String suaTinTuc(Model model,@PathVariable("ID") int ID) {
		model.addAttribute("listtheloai", theLoaiService.getAllTheLoai());
		model.addAttribute("tintuc", tinTucService.getTinTucByID(ID));
		return "admin/sua-tin-tuc";
		
	}
	
	@RequestMapping(value = {"/sua-tin-tuc"}, method = RequestMethod.POST)
	public String suaTinTuc(@ModelAttribute("tintuc") Tin_tuc tintuc) {
		
		MultipartFile multipartFile = tintuc.getFile();
		File file = new File("C:\\Users\\LApTops\\Desktop\\Study\\Java Project (Github)\\FasttrackSe_1902\\Pham Minh Van\\DA-Website\\WebContent\\resources\\image\\" + multipartFile.getOriginalFilename());
		try {
			FileOutputStream fileOutputStream = new FileOutputStream(file);
			fileOutputStream.write(multipartFile.getBytes());
			fileOutputStream.close();
			
			tintuc.setHinh_anh(multipartFile.getOriginalFilename());
		} catch(FileNotFoundException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		tinTucService.suaTinTuc(tintuc);
		return "redirect:/danh-sach-tin-tuc";
		
	}
	
}
