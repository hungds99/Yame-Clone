package com.hunter.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hunter.dto.GioHangDTO;
import com.hunter.entity.SanPham;
import com.hunter.service.SanPhamService;

@Controller
@RequestMapping("sanpham/")
public class SanPhamController {
	
	@Autowired
	private SanPhamService sanPhamService;

	@GetMapping("{idsanpham}")
	public String getProductDetail(@PathVariable("idsanpham") int ID,Model m,HttpSession httpSession) {
		
		SanPham sanPham = sanPhamService.getSanPham(ID);
		m.addAttribute("sanPham", sanPham);
		
		@SuppressWarnings("unchecked")
		List<GioHangDTO> listGioHangs = (List<GioHangDTO>) httpSession.getAttribute("cart");
		if (listGioHangs != null) {
			m.addAttribute("soluongsanpham", listGioHangs.size());
		} else {
			m.addAttribute("soluongsanpham", 0);
		}
		
		return "product";
	}
}
