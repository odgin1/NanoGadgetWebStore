package com.dragomir.webstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dragomir.webstore.domain.Customer;
import com.dragomir.webstore.service.CustomerService;


@Controller
public class CustomerController {

	@Autowired
	CustomerService customerService;
	
	@RequestMapping("/customers")
	public String showCustomers(Model model){
		List<Customer> customerList = customerService.getAllCustomers();
		model.addAttribute("customerList",customerList);
		return "customers";
	}
}
