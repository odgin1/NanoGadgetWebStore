package com.dragomir.webstore.domain.repository.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.dragomir.webstore.domain.Customer;
import com.dragomir.webstore.domain.repository.CustomerRepository;

@Repository
public class InMemoryCustomerRepository implements CustomerRepository {

	List<Customer> customerList = new ArrayList<Customer>();
	
	public InMemoryCustomerRepository(){
//		Customer customer1 = new Customer();
//		customer1.setCustomerId("0");
//		customer1.setName("Vasile");
//		customer1.setAddress("str. Tudor Vladimirescu 23");
//		customer1.setNoOfOrdersMade(true);
//		
//		Customer customer2 = new Customer();
//		customer2.setCustomerId(1);
//		customer2.setName("Tudor");
//		customer2.setAddress("str. Vasile Lupu 45");
//		customer2.setNoOfOrdersMade(true);
//		
//		Customer customer3 = new Customer();
//		customer3.setCustomerId(2);
//		customer3.setName("Ion");
//		customer3.setAddress("str. Tighina 2");
//		customer3.setNoOfOrdersMade(false);
//		
//		customerList.add(customer1);
//		customerList.add(customer2);
//		customerList.add(customer3);
		
	}
	
	@Override
	public List<Customer> getAllCustomers() {
		return customerList;
	}

}
