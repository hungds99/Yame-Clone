package com.hunter.service;

import java.util.List;

import com.hunter.entity.SanPham;

public interface SanPhamService {

	public List<SanPham> getAllSanPham();
	
	public SanPham getSanPham(int ID);
	
	public List<SanPham> getSanPhamByDanhMuc(int ID);
	
	public List<SanPham> getNewSanPham();
}
