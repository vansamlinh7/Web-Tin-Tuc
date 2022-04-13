package com.thoidaimoi.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.thoidaimoi.entity.Nguoi_dung;
import com.thoidaimoi.service.ChucVuService;
import com.thoidaimoi.service.NguoiDungService;

@Controller
public class NguoiDungController {

	@Autowired
	private NguoiDungService nguoiDungService;
	
	@Autowired
	private ChucVuService chucVuService;

	
	
	@RequestMapping("/danh-sach-nguoi-dung")
	public String GetAllNguoiDung(Model model) {
		model.addAttribute("listnguoidung", nguoiDungService.getAllNguoiDung());
		return "admin/danh-sach-nguoi-dung";
	}
	
	@RequestMapping(value ="/them-nguoi-dung", method = RequestMethod.GET)
	public String addNguoiDung(Model model) {
		model.addAttribute("chucvu", chucVuService.getAllChucVu());
		model.addAttribute("nguoidung", new Nguoi_dung());
		return "admin/them-nguoi-dung";
	}
	@RequestMapping(value = "/them-nguoi-dung", method = RequestMethod.POST)
	public String addNguoiDung(Model model, @ModelAttribute("nguoidung") @Valid Nguoi_dung nguoidung,BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			model.addAttribute("chucvu", chucVuService.getAllChucVu());
			return "admin/them-nguoi-dung";
		}
		MultipartFile multipartFile = nguoidung.getFile();
		File file = new File("C:\\Users\\LApTops\\Desktop\\Study\\Java Project (Github)\\FasttrackSe_1902\\Pham Minh Van\\DA-Website\\WebContent\\resources\\image\\"+ multipartFile.getOriginalFilename());
		try {
			FileOutputStream fileOutputStream = new FileOutputStream(file);
			fileOutputStream.write(multipartFile.getBytes());
			fileOutputStream.close();
			
			nguoidung.setHinh_anh(multipartFile.getOriginalFilename());
		} catch(FileNotFoundException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		nguoiDungService.addNguoiDung(nguoidung);
		return "redirect:/danh-sach-nguoi-dung";
	}
	
	@RequestMapping(value = "/xoa-nguoi-dung/{ID}", method = RequestMethod.GET)
	public String xoaNguoiDungById(Model model, @PathVariable("ID") int ID) {
		nguoiDungService.xoaNguoiDungById(ID);
		return "redirect:/danh-sach-nguoi-dung";
	}
	
	@RequestMapping(value = "/sua-nguoi-dung/{ID}", method = RequestMethod.GET)
	public String suaNguoiDung(Model model, @PathVariable("ID" ) int ID) {
		model.addAttribute("chucvu", chucVuService.getAllChucVu());
		model.addAttribute("nguoidung", nguoiDungService.GetNguoiDungById(ID));
		return "admin/sua-nguoi-dung";
	}
	
	@RequestMapping(value = "/sua-nguoi-dung", method = RequestMethod.POST)
	public String suaNguoiDung(Model model,@ModelAttribute("nguoidung") @Valid Nguoi_dung nguoidung, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			model.addAttribute("chucvu", chucVuService.getAllChucVu());
			return "admin/sua-nguoi-dung";
		}
		
		MultipartFile multipartFile = nguoidung.getFile();
		File file = new File("C:\\Users\\LApTops\\Desktop\\Study\\Java Project (Github)\\FasttrackSe_1902\\Pham Minh Van\\DA-Website\\WebContent\\resources\\image\\"+ multipartFile.getOriginalFilename());
		try {
			FileOutputStream fileOutputStream = new FileOutputStream(file);
			fileOutputStream.write(multipartFile.getBytes());
			fileOutputStream.close();
			
			nguoidung.setHinh_anh(multipartFile.getOriginalFilename());
		} catch(FileNotFoundException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		nguoiDungService.suaNguoiDung(nguoidung);
		return "redirect:/danh-sach-nguoi-dung";
	}
	
	@RequestMapping("/thongke")
	public String ThongKe(Model model) {
		return "admin/thongke";
	}
	
}
