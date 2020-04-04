package com.hunter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hunter.entity.MauSanPham;
import com.hunter.entity.SanPham;
import com.hunter.entity.SizeSanPham;
import com.hunter.service.ChiTietSanPhamService;
import com.hunter.service.SanPhamService;

@Controller
@RequestMapping("/quanlychitiet")
public class QuanLyChiTietController {

	@Autowired
	private SanPhamService sanPhamService;

	@Autowired
	private ChiTietSanPhamService chiTietSanPhamService;

	@GetMapping("/{id}")
	public String getManager(@PathVariable("id") int id, Model m) {

		// Get San Pham By Id
		SanPham sanPham = sanPhamService.getSanPham(id);
		m.addAttribute("sanPham", sanPham);

		// Get Toan Bo Mau Hien Co
		List<MauSanPham> mauSanPhams = chiTietSanPhamService.getToanBoMau();
		m.addAttribute("mauSanPhams", mauSanPhams);

		// Get Toan Bo Size Hien Co
		List<SizeSanPham> sizeSanPhams = chiTietSanPhamService.getToanBoSize();
		m.addAttribute("sizeSanPhams", sizeSanPhams);

		return "manager";
	}

	@PostMapping("/themmau")
	public ResponseEntity<String> themMau(@RequestParam(value = "tenMau") String tenMau) {
		MauSanPham mau = new MauSanPham();
		mau.setTenMau(tenMau);
		chiTietSanPhamService.themMauMoi(mau);
		return new ResponseEntity<>("Thêm thành công", HttpStatus.OK);
	}

	@PostMapping("/themsize")
	public ResponseEntity<String> themSize(@RequestParam(value = "size") String size) {
		SizeSanPham sizesp = new SizeSanPham();
		sizesp.setSize(size);
		chiTietSanPhamService.themSizeMoi(sizesp);
		return new ResponseEntity<>("Thêm thành công", HttpStatus.OK);
	}

	@PostMapping("/themchitiet")
	public ResponseEntity<String> themChiTiet(@RequestParam("sanphamID") String sanPhamID,
			@RequestParam("mauID") String mauSanPhamID, @RequestParam("sizeID") String sizeSanPhamID,
			@RequestParam("soLuong") String soLuong, @RequestParam("ngayNhap") String ngayNhap) {

		chiTietSanPhamService.themChiTietSanPham(Integer.parseInt(soLuong), ngayNhap, Integer.parseInt(sanPhamID),
				Integer.parseInt(sizeSanPhamID), Integer.parseInt(mauSanPhamID));

		return new ResponseEntity<>("Thêm thành công", HttpStatus.OK);
	}

	@GetMapping("/xoachitiet/{chitietID}")
	public ResponseEntity<String> xoaChiTiet(@PathVariable(name = "chitietID") String id) {
		chiTietSanPhamService.xoaChiTiet(Integer.parseInt(id));
		return new ResponseEntity<String>("Xóa thành công", HttpStatus.OK);
	}
}
