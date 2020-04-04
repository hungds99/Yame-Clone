package com.hunter.dto;

import java.io.Serializable;

public class SanPhamDTO implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int ID;
	private String tenSanPham;
	private int giaTien;
	private String moTa;
	private String hinhSanPham;

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

	public int getGiaTien() {
		return giaTien;
	}

	public void setGiaTien(int giaTien) {
		this.giaTien = giaTien;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public String getHinhSanPham() {
		return hinhSanPham;
	}

	public void setHinhSanPham(String hinhSanPham) {
		this.hinhSanPham = hinhSanPham;
	}

	@Override
	public String toString() {
		return "SanPhamDto [ID=" + ID + ", tenSanPham=" + tenSanPham + ", giaTien=" + giaTien + ", moTa=" + moTa
				+ ", hinhSanPham=" + hinhSanPham + "]";
	}

	
}
