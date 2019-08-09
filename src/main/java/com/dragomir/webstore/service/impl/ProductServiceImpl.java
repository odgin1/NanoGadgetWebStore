package com.dragomir.webstore.service.impl;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dragomir.webstore.domain.Product;
import com.dragomir.webstore.domain.repository.ProductRepository;
import com.dragomir.webstore.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
//	@Qualifier(value="productFromDB")
	@Qualifier(value="inMemoryProductRepository")
	ProductRepository productRepository;

	@Override
	@Transactional
	public List<Product> getAllProducts() {
		return productRepository.getAllProducts();
	}

	@Override
	@Transactional
	public Product getProductById(String productID) {
		return productRepository.getProductById(productID);
	}

	@Override
	@Transactional
	public List<Product> getProductsByCategory(String category) {
		return productRepository.getProductsByCategory(category);
	}

	@Override
	@Transactional
	public Set<Product> getProductsByFilter(Map<String, List<String>> filterParams) {
		return productRepository.getProductsByFilter(filterParams);
	}

	@Override
	@Transactional
	public void addProduct(Product product) {
		productRepository.addProduct(product);
	}

	@Override
	public Product saveProduct(Product newProduct) {
		return productRepository.saveProduct(newProduct);
	}

}
