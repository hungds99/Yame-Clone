package com.hunter.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hunter.dao.DanhMucSanPhamDAO;
import com.hunter.entity.DanhMucSanPham;

@Service
public class DanhMucSanPhamImpl implements DanhMucSanPhamService {

	@Autowired
	private DanhMucSanPhamDAO danhMucSanPhamDAO;

	@Override
	public List<DanhMucSanPham> getAllDanhMuc() {
		return danhMucSanPhamDAO.getAllDanhMuc();
	}
}
