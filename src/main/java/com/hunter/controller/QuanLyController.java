package com.hunter.controller;

import java.io.File;
import java.net.URISyntaxException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hunter.dto.SanPhamDTO;
import com.hunter.entity.DanhMucSanPham;
import com.hunter.entity.SanPham;
import com.hunter.service.CRUDSanPhamService;
import com.hunter.service.DanhMucSanPhamService;
import com.hunter.service.SanPhamService;

@Controller
@RequestMapping("/quanly")
public class QuanLyController {
	
	@Autowired
	private DanhMucSanPhamService danhMucSanPhamService;
	
	@Autowired
	private SanPhamService sanPhamService;
	
	@Autowired
	private CRUDSanPhamService crudSanPhamService;

	@GetMapping
	public String getQuanLy(Model m) {
		
		List<DanhMucSanPham> danhMucSanPhams = danhMucSanPhamService.getAllDanhMuc();
		m.addAttribute("danhMucSanPhams", danhMucSanPhams);
		
		List<SanPham> sanPhams = sanPhamService.getAllSanPham();
		m.addAttribute("sanPhams", sanPhams);
		
		return "admin";
	}
	
	@PostMapping(produces = {"application/json;charset=UTF-8"})
	public String thenSanPham(@ModelAttribute SanPham sanPham, 
			@RequestParam("tensanpham") String tenSanPham,
			@RequestParam("giatien") String giaTien, 
			@RequestParam("danhmucsanpham") String danhMucSanPham,
			@RequestParam("mota") String moTa, 
			@RequestParam(value = "file") CommonsMultipartFile commonsMultipartFile,
			HttpSession request) throws URISyntaxException {
		String nameFile = commonsMultipartFile.getOriginalFilename();
		
		if (!"".equals(nameFile)) {
			
			String duongDan = request.getServletContext().getRealPath("/resources/images");
			File fileDir = new File(duongDan);
			if (!fileDir.exists()) {
				fileDir.mkdir();
			}
			try {
				String link = fileDir + File.separator + nameFile;
				commonsMultipartFile.transferTo(new File(link));
				System.out.println(link);
				System.out.println("Upload file thành công!");
			} catch (Exception e) {
				System.out.println(e.getMessage());
				System.out.println("Upload file thất bại!");
			}
			
		}
		sanPham.setTenSanPham(tenSanPham);
		sanPham.setGiaTien(Integer.parseInt(giaTien));
		sanPham.setMoTa(moTa);
		sanPham.setHinhSanPham(nameFile);

		crudSanPhamService.saveSanPhamMoi(Integer.parseInt(danhMucSanPham), sanPham);

		return "redirect:/quanly";
	}
	
	@PostMapping(path = "/laysanphambyid",produces = {"application/json;charset=UTF-8"})
	public @ResponseBody String laysanphambyid(@RequestParam(name = "spid") String spid) throws JsonProcessingException {
		SanPham sanpham = crudSanPhamService.laysanphambyid(Integer.parseInt(spid));
		SanPhamDTO spdto = new SanPhamDTO();
		spdto.setID(sanpham.getID());
		spdto.setTenSanPham(sanpham.getTenSanPham());
		spdto.setGiaTien(sanpham.getGiaTien());
		spdto.setMoTa(sanpham.getMoTa());
		spdto.setHinhSanPham(sanpham.getHinhSanPham());
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(spdto);
		return json;
	}
	
	@PostMapping(path = "/capnhatsanpham")
	public ResponseEntity<HttpStatus> capnhatsanpham(
			@RequestParam("spid") String spid,
			@RequestParam("tensanpham") String tenSanPham,
			@RequestParam("giatien") String giaTien, 
			@RequestParam("mota") String moTa){
		
		int id = Integer.parseInt(spid);
		int gia = Integer.parseInt(giaTien);
		SanPhamDTO spdto = new SanPhamDTO();
		spdto.setID(id);
		spdto.setTenSanPham(tenSanPham);
		spdto.setGiaTien(gia);
		spdto.setMoTa(moTa);
		crudSanPhamService.capnhatsanpham(spdto);
		return new ResponseEntity<HttpStatus>(HttpStatus.OK);
	}
	
	@GetMapping("/xoasanpham/{ID}")
	public String xoaSanPham(@PathVariable(name = "ID") int ID) {
		crudSanPhamService.xoaSanPham(ID);
		return "redirect:/quanly";
	}
	
	@GetMapping("/timkiem")
	public String timKiemSanPham(@RequestParam("term") String tenTimKiem,Model m) {
		List<SanPham> sanPhams = crudSanPhamService.timKiemSanPham(tenTimKiem);
		m.addAttribute("sanPhams", sanPhams);
		return "admin";
	}
}
