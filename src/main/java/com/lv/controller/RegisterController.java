package com.lv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lv.face.ProductsFace;
import com.lv.persisntece.Product;

@Controller
public class RegisterController {

	@Autowired
	private ProductsFace productsFace;

	private Product product = new Product();

	@GetMapping("/register")
	public ModelAndView index() {
		product = new Product();

		ModelAndView modelAndView = new ModelAndView("/register");
		modelAndView.addObject("product", product);

		return modelAndView;
	}

	@RequestMapping(value = "/salvaproduto", method = RequestMethod.POST)
	public ModelAndView form(Product product) {
		productsFace.save(product);
		product = new Product();

		ModelAndView modelAndView = new ModelAndView("/register");
		modelAndView.addObject("product", product);

		return modelAndView;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}