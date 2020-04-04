package com.hunter.service;

import java.util.List;

import com.hunter.dto.SanPhamDTO;
import com.hunter.entity.SanPham;

public interface CRUDSanPhamService {
	
	public void saveSanPhamMoi(int danhMuc_ID, SanPham sanPham);

	public SanPham laysanphambyid(int parseInt);

	public void capnhatsanpham(SanPhamDTO spdto);

	public void xoaSanPham(int iD);
	
	public List<SanPham> timKiemSanPham(String tenTimKiem);
	
}
