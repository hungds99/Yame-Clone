package com.hunter.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.hunter.dto.GioHangDTO;
import com.hunter.entity.DanhMucSanPham;
import com.hunter.entity.SanPham;
import com.hunter.service.DanhMucSanPhamService;
import com.hunter.service.SanPhamService;

@Controller
public class HomeController {
	
	@Autowired
	private DanhMucSanPhamService danhMucSanPhamService;
	
	@Autowired
	private SanPhamService sanPhamService;

	@GetMapping("/")
	public String getHome(Model m,HttpSession httpSession) {
		
		List<DanhMucSanPham> danhMucSanPhams = danhMucSanPhamService.getAllDanhMuc();
		m.addAttribute("danhMucSanPhams", danhMucSanPhams);
		
		List<SanPham> sanPhams = sanPhamService.getAllSanPham();
		m.addAttribute("sanPhams", sanPhams);
		
		List<SanPham> sanPhamsnew = sanPhamService.getNewSanPham();
		m.addAttribute("sanPhamsnew", sanPhamsnew);
		
		@SuppressWarnings("unchecked")
		List<GioHangDTO> listGioHangs = (List<GioHangDTO>) httpSession.getAttribute("cart");
		if (listGioHangs != null) {
			m.addAttribute("soluongsanpham", listGioHangs.size());
		} else {
			m.addAttribute("soluongsanpham", 0);
		}
		
		return "home";
	}
	
	@GetMapping("/login")
	public String getLogin() {
		
		return "login";
	}

}
