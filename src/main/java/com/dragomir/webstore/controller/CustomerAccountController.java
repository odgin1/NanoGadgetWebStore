package com.dragomir.webstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dragomir.webstore.service.CustomerService;

public class CustomerAccountController {

	@Autowired
	public CustomerService customerService;
	
	@RequestMapping(value = "/myaccount")
	public void getCustomerAccount(){
		
	}
}
