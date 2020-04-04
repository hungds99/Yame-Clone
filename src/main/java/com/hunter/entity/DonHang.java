package com.hunter.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "DonHang")
public class DonHang {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ID;

	private String tenSanPham;
	private String tenMauSanPham;
	private String tenSizeSanPham;
	private int soLuong;
	private int giaTien;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "khachHang_ID")
	private KhachHang khachHang;

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getTenSanPham() {
		return tenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}

	public String getTenMauSanPham() {
		return tenMauSanPham;
	}

	public void setTenMauSanPham(String tenMauSanPham) {
		this.tenMauSanPham = tenMauSanPham;
	}

	public String getTenSizeSanPham() {
		return tenSizeSanPham;
	}

	public void setTenSizeSanPham(String tenSizeSanPham) {
		this.tenSizeSanPham = tenSizeSanPham;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public int getGiaTien() {
		return giaTien;
	}

	public void setGiaTien(int giaTien) {
		this.giaTien = giaTien;
	}

	public KhachHang getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

}
