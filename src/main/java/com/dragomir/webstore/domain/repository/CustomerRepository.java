package com.dragomir.webstore.domain.repository;

import java.util.List;

import com.dragomir.webstore.domain.Customer;

public interface CustomerRepository {

	List<Customer> getAllCustomers();
}
