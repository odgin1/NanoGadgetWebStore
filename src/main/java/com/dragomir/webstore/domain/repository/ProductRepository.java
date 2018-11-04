package com.dragomir.webstore.domain.repository;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;

import com.dragomir.webstore.domain.Product;

public interface ProductRepository {
	
	@Cacheable("productFindCache")
	List <Product> getAllProducts();
	
	@Cacheable("productFindCache")
	Product getProductById(String productID);
	
	List<Product> getProductsByCategory(String category);
	
	Set<Product> getProductsByFilter(Map<String, List<String>> filterParams);
	
	void addProduct(Product product);

	@CachePut(value = "productFindCache", key="#result.productId")
	Product saveProduct(Product product);
	
	@CacheEvict("productFindCache")
	void deleteProduct(Product product);
}
