package com.hunter.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hunter.dao.CRUDSanPhamDAO;
import com.hunter.dto.SanPhamDTO;
import com.hunter.entity.SanPham;

@Service
public class CRUDSanPhamServiceImpl implements CRUDSanPhamService {
	
	@Autowired
	private CRUDSanPhamDAO crudSanPhamDAO;

	@Override
	public void saveSanPhamMoi(int danhMuc_ID, SanPham sanPham) {
		crudSanPhamDAO.saveSanPhamMoi(danhMuc_ID, sanPham);
	}

	@Override
	public SanPham laysanphambyid(int parseInt) {
		return crudSanPhamDAO.laysanphambyid(parseInt);
	}

	@Override
	public void capnhatsanpham(SanPhamDTO spdto) {
		crudSanPhamDAO.capnhatsanpham(spdto);
	}

	@Override
	public void xoaSanPham(int iD) {
		crudSanPhamDAO.xoaSanPham(iD);
	}

	@Override
	public List<SanPham> timKiemSanPham(String tenTimKiem) {
		return crudSanPhamDAO.timKiemSanPham(tenTimKiem);
	}

}
