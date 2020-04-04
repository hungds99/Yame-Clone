package com.hunter.service;

import java.util.List;

import com.hunter.entity.MauSanPham;
import com.hunter.entity.SizeSanPham;

public interface ChiTietSanPhamService {

	public void themMauMoi(MauSanPham mau);

	public void themSizeMoi(SizeSanPham size);

	public List<MauSanPham> getToanBoMau();

	public List<SizeSanPham> getToanBoSize();

	public void themChiTietSanPham(int soLuong, String ngayNhap, int sanPhamID, int sizeSanPhamID, int mauSanPhamID);

	public void xoaChiTiet(int id);
}
