package com.hunter.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hunter.dao.KhachHangDAO;
import com.hunter.entity.DonHang;
import com.hunter.entity.KhachHang;

@Service
public class KhachHangServiceImpl implements KhachHangService {
	
	@Autowired
	private KhachHangDAO khachHangDAO;

	@Override
	public int saveKhachHang(KhachHang khachHang) {
		return khachHangDAO.saveKhachHang(khachHang);
	}

	@Override
	public void saveDonHang(DonHang donHang) {
		khachHangDAO.saveDonHang(donHang);
	}

}
