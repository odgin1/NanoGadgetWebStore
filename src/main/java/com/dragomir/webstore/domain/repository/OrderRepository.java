package com.dragomir.webstore.domain.repository;

import com.dragomir.webstore.domain.Order;

public interface OrderRepository {

	Long saveOrder(Order order);
}
