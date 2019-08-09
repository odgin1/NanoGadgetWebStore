package com.dragomir.webstore.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dragomir.webstore.domain.Order;
import com.dragomir.webstore.domain.Product;
import com.dragomir.webstore.domain.repository.OrderRepository;
import com.dragomir.webstore.domain.repository.ProductRepository;
import com.dragomir.webstore.service.CartService;
import com.dragomir.webstore.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
//	@Qualifier(value="productFromDB")
	@Qualifier(value="inMemoryProductRepository")
	private ProductRepository productRepository;
	@Autowired
	private OrderRepository orderRepository;
	@Autowired
	private CartService cartService;

	@Override
	public void processOrder(String productId, long quantity) {
		Product productById = productRepository.getProductById(productId);
		if (productById.getUnitsInStock() < quantity) {
			throw new IllegalArgumentException(
					"Out of Stock. Available Units in stock" + productById.getUnitsInStock());
		}
		productById.setUnitsInStock(productById.getUnitsInStock() - quantity);
	}

	@Override
	public Long saveOrder(Order order) {
		
		Long orderId = orderRepository.saveOrder(order);
		cartService.delete(order.getCart().getCartId());
		return orderId;
	}
}