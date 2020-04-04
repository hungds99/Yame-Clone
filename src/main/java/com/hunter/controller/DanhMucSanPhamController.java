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
@RequestMapping("danhmucsanpham/")
public class DanhMucSanPhamController {
	
	@Autowired
	private SanPhamService sanPhamService;
	
	@GetMapping("{iddanhmucsanpham}")
	public String getCategory(@PathVariable("iddanhmucsanpham") int ID, Model m, HttpSession httpSession) {
		
		List<SanPham> sanPhams = sanPhamService.getSanPhamByDanhMuc(ID);
		m.addAttribute("sanPhams", sanPhams);
		
		@SuppressWarnings("unchecked")
		List<GioHangDTO> listGioHangs = (List<GioHangDTO>) httpSession.getAttribute("cart");
		if (listGioHangs != null) {
			m.addAttribute("soluongsanpham", listGioHangs.size());
		} else {
			System.out.println("Không có sản phẩm trong giỏ !");
			m.addAttribute("soluongsanpham", 0);
		}
		
		return "category";
	}
	
	
	
}
