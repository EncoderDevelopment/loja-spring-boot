package com.lv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.lv.face.ProductsFace;
import com.lv.persisntece.Product;

@RestController
@RequestMapping("/")
public class ProductController {

	@Autowired
	private ProductsFace productsFace;
	private Product product = new Product();


	@GetMapping
	public ModelAndView listar() {
		List<Product> productList = productsFace.findAll();

		ModelAndView modelAndView = new ModelAndView("products");
		modelAndView.addObject("products", productList);

		return modelAndView;
	}
	
	@RequestMapping("/deleteproduto{id}")
    public String delete(@PathVariable("id") long id) {

		Product product = productsFace.findOne(id);

		productsFace.delete(product);
        return "<script> setTimeout(function() { window.location.href = '/';}, 10); </script>";

    }
	
	@RequestMapping("/vitrine")
	public ModelAndView vistrine() {
		List<Product> productList = productsFace.findAll();

		ModelAndView modelAndView = new ModelAndView("vitrine");
		modelAndView.addObject("products", productList);

		return modelAndView;
	}
	
	@GetMapping("/edit{id}")
	public ModelAndView atualizar(@PathVariable("id") Long id) {
		Product p = productsFace.findOne(id);
		
		ModelAndView modelAndView = new ModelAndView("/register");
		modelAndView.addObject("product", p);

		return modelAndView;
	}
	
		
}
