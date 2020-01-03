package se.iuh.sachspringlegacy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import se.iuh.sachspringlegacy.dao.LoaiSachDAO;
import se.iuh.sachspringlegacy.dao.SachDAO;
import se.iuh.sachspringlegacy.entity.LoaiSach;
import se.iuh.sachspringlegacy.entity.Sach;


@Controller
public class HomeController {
	
	@Autowired
	LoaiSachDAO lsdao;
	@Autowired
	SachDAO sdao;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home( Model model) {
		
		List<LoaiSach> ds= lsdao.layDanhSachLoaiSach();
		model.addAttribute("dsls", ds);
		return "Home";
	}
	@RequestMapping("/themmoi")
	public String ThemSach(Model model) {
		Sach s= new Sach();
		model.addAttribute("sach", s);
		List<LoaiSach> ds= lsdao.layDanhSachLoaiSach();
		model.addAttribute("dsls", ds);
		return "ThemMoi";
	}
	@RequestMapping("/xulythem")
	public String xulythem(@ModelAttribute("sach") @Validated Sach s, BindingResult result,Model model) {
		if(result.hasErrors()) {
			List<LoaiSach> ds= lsdao.layDanhSachLoaiSach();
			model.addAttribute("dsls", ds);
			return "ThemMoi";
		}
		s.setHinh("/images/00000000_000000.jpg");
		sdao.themSach(s);
		return "redirect:/";
	}
	@RequestMapping("/quanly")
	public String QuanLy(Model model) {
		List<LoaiSach> ds= lsdao.layDanhSachLoaiSach();
		model.addAttribute("dsls", ds);
		return "QuanLy";
	}
	@RequestMapping("/xemchitiet/{masach}")
	public String xemchitiet(@PathVariable String masach,Model model) {
		List<Sach> ds= sdao.layThongTinSach(masach);
		Sach s=ds.get(0);
		model.addAttribute("sach", s);
		return "ChiTietSach";
	}
	@RequestMapping("/xoa/{masach}")
	public String xoaSach(@PathVariable String masach) {
		sdao.xoaSachTheoMa(masach);
		return "redirect:/quanly";
	}
	
}
