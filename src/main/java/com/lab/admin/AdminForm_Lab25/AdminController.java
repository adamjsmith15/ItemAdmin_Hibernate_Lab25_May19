package com.lab.admin.AdminForm_Lab25;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
	
	@Autowired
	AdminRepository dao;
	
	@RequestMapping("/")
	public ModelAndView index() {
		
		return new ModelAndView("index", "inven", dao.findAll());
	}
	@RequestMapping("/add")
	public ModelAndView addPage() {
		return new ModelAndView("additem");
	}
	@RequestMapping("/add-item")
	public ModelAndView addItems(@RequestParam("name")String name, @RequestParam("description")String d, @RequestParam("quantity")int q,
			@RequestParam("price") double p) {
		Items newItem = new Items(name, d, q, p);
		if(dao.findByName(name)== null) {
			dao.save(newItem);
			return new ModelAndView("redirect:/");
		}else {
			return new ModelAndView("additem", "alert", "That item already exists!");
		}
		
	}
	
	@RequestMapping("/edit")
	public ModelAndView editPage(@RequestParam("id")int id) {
		Items i = dao.findById(id).get();
		return new ModelAndView("edititem", "item", i);
	}
	@RequestMapping("/edit-item")
	public ModelAndView editItem(@RequestParam("id")int id, @RequestParam("name")String name, @RequestParam("description")String d, @RequestParam("quantity")int q,
			@RequestParam("price") double p) {
		dao.save(new Items(name, d, q, p, id));
		return new ModelAndView("redirect:/");
	}
	@RequestMapping("/delete")
	public ModelAndView deleteItem(@RequestParam("id")int id) {
		dao.deleteById(id);
		return new ModelAndView("redirect:/");
	}

}
