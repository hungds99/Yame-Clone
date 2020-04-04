package com.hunter.api;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.hunter.dto.GioHangDTO;

@Controller
@RequestMapping("api/")
@SessionAttributes({ "cart" })
public class GioHangAPI {

	@GetMapping("themgiohang/")
	@ResponseBody
	public String themGioHang(@ModelAttribute GioHangDTO gioHang, HttpSession session) {
		if (session.getAttribute("cart") == null) {
			List<GioHangDTO> listGioHangs = new ArrayList<GioHangDTO>();
			gioHang.setSoLuong(1);
			listGioHangs.add(gioHang);
			
			// Tao Session
			session.setAttribute("cart", listGioHangs);

			return Integer.toString(listGioHangs.size());
		}
		// Neu session da ton tai
		else {
			// Lay ra session
			@SuppressWarnings("unchecked")
			List<GioHangDTO> listGioHangs = (List<GioHangDTO>) session.getAttribute("cart");
			int vitri = kiemTraSanPhamDaTonTai(gioHang, listGioHangs);
			
			if (vitri == -1) {
				gioHang.setSoLuong(1);
				listGioHangs.add(gioHang);
			} else {
				int soluong = listGioHangs.get(vitri).getSoLuong() + 1;
				listGioHangs.get(vitri).setSoLuong(soluong);
			}

			session.setAttribute("cart", listGioHangs);

			return Integer.toString(listGioHangs.size());
		}

	}

	private int kiemTraSanPhamDaTonTai(GioHangDTO gioHang, List<GioHangDTO> listGioHangs) {
		for (int i = 0; i < listGioHangs.size(); i++) {
			if (gioHang.getMauID() == listGioHangs.get(i).getMauID()
					&& gioHang.getSizeID() == listGioHangs.get(i).getSizeID()
					&& gioHang.getSpID() == listGioHangs.get(i).getSpID()) {
				return i;
			}
		}
		return -1;
	}
}
