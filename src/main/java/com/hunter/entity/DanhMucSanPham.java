package com.hunter.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "DanhMucSanPham")
public class DanhMucSanPham implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ID;
	private String tenDanhMuc;
	private String hinhAnhDanhMuc;

	@OneToMany(mappedBy = "danhMucSanPham", fetch = FetchType.LAZY)
	private List<SanPham> sanPhams;

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getTenDanhMuc() {
		return tenDanhMuc;
	}

	public void setTenDanhMuc(String tenDanhMuc) {
		this.tenDanhMuc = tenDanhMuc;
	}

	public String getHinhAnhDanhMuc() {
		return hinhAnhDanhMuc;
	}

	public void setHinhAnhDanhMuc(String hinhAnhDanhMuc) {
		this.hinhAnhDanhMuc = hinhAnhDanhMuc;
	}

	public List<SanPham> getSanPhams() {
		return sanPhams;
	}

	public void setSanPhams(List<SanPham> sanPhams) {
		this.sanPhams = sanPhams;
	}

	@Override
	public String toString() {
		return "DanhMucSanPham [ID=" + ID + ", tenDanhMuc=" + tenDanhMuc + ", hinhAnhDanhMuc=" + hinhAnhDanhMuc + "]";
	}

}
