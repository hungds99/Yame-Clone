package com.hunter.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hunter.dao.SanPhamDAO;
import com.hunter.entity.SanPham;

@Service
public class SanPhamServiceImpl implements SanPhamService {
	
	@Autowired
	private SanPhamDAO sanPhamDAO;

	@Override
	public List<SanPham> getAllSanPham() {
		return sanPhamDAO.getAllSanPham();
	}

	@Override
	public SanPham getSanPham(int ID) {
		return sanPhamDAO.getSanPham(ID);
	}

	@Override
	public List<SanPham> getSanPhamByDanhMuc(int ID) {
		return sanPhamDAO.getSanPhamByDanhMuc(ID);
	}

	@Override
	public List<SanPham> getNewSanPham() {
		return sanPhamDAO.getNewSanPham();
	}

}
