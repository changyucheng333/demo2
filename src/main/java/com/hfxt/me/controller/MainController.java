package com.hfxt.me.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hfxt.me.entity.Classes;
import com.hfxt.me.entity.Faqs;
import com.hfxt.me.service.ClassesService;
import com.hfxt.me.service.FaqsService;

@Controller
public class MainController {
	
	@Autowired
	private FaqsService faqsService;
	
	@Autowired
	private ClassesService classesService;
	
	@RequestMapping("/selectAll.htm")
	public String selectAll(@RequestParam(value="title", required=false) String title,Model model) {
		List<Faqs> list = faqsService.selectAll(title);
		model.addAttribute("list", list);
		return "/main.jsp";
	}
	
	@RequestMapping("/selectById.htm")
	public String selectById(Integer id,Model model) {
		
		List<Faqs> list = faqsService.selectAll("");
		for (Faqs faqs : list) {
			if(faqs.getId().equals(id)) {
				model.addAttribute("faqs", faqs);
				break;
			}
		}
		return "/show.jsp";
	}
	
	@RequestMapping("/selectCname.htm")
	public String selectCname(Model model) {
		
		List<Classes> list = classesService.selectCname();
		model.addAttribute("list", list);
		return "/add.jsp";
	}
	
	@RequestMapping("/insert.htm")
	public String insert(Faqs faqs,RedirectAttributes attr) {
		faqs.setCreatedate(new Date());
		
		Integer num = faqsService.insert(faqs);
		if(num>0) {
			
			attr.addFlashAttribute("info", "保存成功！");  
			return "redirect:/selectAll.htm" ;
		}
		attr.addFlashAttribute("info", "保存失败！");  
		return "/add.jsp";
		
	}
}
