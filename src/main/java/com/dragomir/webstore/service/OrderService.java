package com.dragomir.webstore.service;

import com.dragomir.webstore.domain.Order;

public interface OrderService {

	void processOrder(String productId, long count);

	Long saveOrder(Order order);

}
