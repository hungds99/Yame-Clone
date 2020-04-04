package com.hunter.service;

import com.hunter.entity.DonHang;
import com.hunter.entity.KhachHang;

public interface KhachHangService {

	public int saveKhachHang(KhachHang khachHang);
	
	public void saveDonHang(DonHang donHang);
	
}
