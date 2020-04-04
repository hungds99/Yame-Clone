package com.hunter.dto;

import java.io.Serializable;

public class GioHangDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int spID;
	private int mauID;
	private int sizeID;
	private String tenSanPham;
	private int giaTien;
	private String tenMau;
	private String size;
	private int soLuong;

	public int getSpID() {
		return spID;
	}

	public void setSpID(int spID) {
		this.spID = spID;
	}

	public int getMauID() {
		return mauID;
	}

	public void setMauID(int mauID) {
		this.mauID = mauID;
	}

	public int getSizeID() {
		return sizeID;
	}

	public void setSizeID(int sizeID) {
		this.sizeID = sizeID;
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

	public String getTenMau() {
		return tenMau;
	}

	public void setTenMau(String tenMau) {
		this.tenMau = tenMau;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	@Override
	public String toString() {
		return "GioHang ["
				+ "\n spID = " + spID 
				+ "\n mauID = " + mauID 
				+ "\n sizeID = " + sizeID 
				+ "\n tenSanPham = " + tenSanPham
				+ "\n giaTien = " + giaTien 
				+ "\n tenMau = " + tenMau 
				+ "\n size = " + size 
				+ "\n soLuong = " + soLuong 
				+ "\n]";
	}

}
