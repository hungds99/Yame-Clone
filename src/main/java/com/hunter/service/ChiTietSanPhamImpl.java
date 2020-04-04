package com.hunter.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hunter.dao.ChiTietSanPhamDAO;
import com.hunter.entity.MauSanPham;
import com.hunter.entity.SizeSanPham;

@Service
public class ChiTietSanPhamImpl implements ChiTietSanPhamService {

	@Autowired
	private ChiTietSanPhamDAO chiTietSanPhamDAO;

	@Override
	public void themMauMoi(MauSanPham mau) {
		chiTietSanPhamDAO.themMauMoi(mau);
	}

	@Override
	public void themSizeMoi(SizeSanPham size) {
		chiTietSanPhamDAO.themSizeMoi(size);
	}

	@Override
	public List<MauSanPham> getToanBoMau() {
		return chiTietSanPhamDAO.getToanBoMau();
	}

	@Override
	public List<SizeSanPham> getToanBoSize() {
		return chiTietSanPhamDAO.getToanBoSize();
	}

	@Override
	public void themChiTietSanPham(int soLuong, String ngayNhap, int sanPhamID, int sizeSanPhamID, int mauSanPhamID) {
		chiTietSanPhamDAO.themChiTietSanPham(soLuong, ngayNhap, sanPhamID, sizeSanPhamID, mauSanPhamID);
	}

	@Override
	public void xoaChiTiet(int id) {
		chiTietSanPhamDAO.xoaChiTiet(id);

	}

}
