package com.hunter.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hunter.dto.GioHangDTO;
import com.hunter.entity.DonHang;
import com.hunter.entity.KhachHang;
import com.hunter.service.KhachHangService;

@Controller
@RequestMapping("giohang/")
public class GioHangController {

	@Autowired
	private KhachHangService khachHangService;

	@GetMapping
	public String getGioHang(HttpSession httpSession, Model m) {

		@SuppressWarnings("unchecked")
		List<GioHangDTO> listGioHangs = (List<GioHangDTO>) httpSession.getAttribute("cart");
		if (listGioHangs != null) {
			m.addAttribute("gioHangs", listGioHangs);
			m.addAttribute("soluongsanpham", listGioHangs.size());
		} else {
			m.addAttribute("soluongsanpham", 0);
		}

		return "cart";
	}

	// Xóa Mặt Hàng
	@GetMapping("xoa/{ID}")
	public String xoaSanPham(@PathVariable(name = "ID") int ID, HttpSession httpSession) {
		@SuppressWarnings("unchecked")
		List<GioHangDTO> listGioHangs = (List<GioHangDTO>) httpSession.getAttribute("cart");
		int index = getIndexOfSanPham(listGioHangs, ID);
		System.out.println(index + "/////////////////////////////////////////////////");
		listGioHangs.remove(index);

		return "redirect:/giohang/";
	}

	public int getIndexOfSanPham(List<GioHangDTO> listGioHangs, int ID) {
		int count = 0;
		for (GioHangDTO gioHangDTO : listGioHangs) {
			if (gioHangDTO.getSpID() == ID) {
				
				return count;
			}
			count += 1;
		}
		return -1;
	}

	@PostMapping(path = "dathang")
	public String getDatHang(@ModelAttribute KhachHang khachHang, HttpSession httpSession) {

		khachHangService.saveKhachHang(khachHang);
		@SuppressWarnings("unchecked")
		List<GioHangDTO> listGioHangs = (List<GioHangDTO>) httpSession.getAttribute("cart");
		for (GioHangDTO gioHang : listGioHangs) {
			DonHang donHang = new DonHang();
			donHang.setTenSanPham(gioHang.getTenSanPham());
			donHang.setTenMauSanPham(gioHang.getTenMau());
			donHang.setTenSizeSanPham(gioHang.getSize());
			donHang.setGiaTien(gioHang.getGiaTien());
			donHang.setSoLuong(gioHang.getSoLuong());
			donHang.setKhachHang(khachHang);
			khachHangService.saveDonHang(donHang);
		}
		httpSession.removeAttribute("cart");
		return "redirect:success";
	}

	@GetMapping("success")
	public String getSuccessPage() {

		return "buysuccess";
	}
}
