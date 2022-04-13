package com.thoidaimoi.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thoidaimoi.entity.The_loai;

public interface TheLoaiService {
	public List<The_loai> getAllTheLoai();
}
