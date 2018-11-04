package com.dragomir.webstore.domain.repository.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dragomir.webstore.domain.Product;
import com.dragomir.webstore.domain.repository.ProductRepository;
import com.dragomir.webstore.utils.CacheTesting;

@Repository(value="productFromDB")
public class ProductRepositoryImpl implements ProductRepository{

	private static final Logger logger = LoggerFactory.getLogger(ProductRepositoryImpl.class);

	
	@Autowired
    private SessionFactory sessionFactory;

	
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getAllProducts() {
		Session session = sessionFactory.getCurrentSession();
		List<Product> productsList = session.createQuery("from product").list();
		for(Product p : productsList){
			logger.info("Product List::"+p);
		}
		return productsList;
	}

	@Override
	public Product getProductById(String productID) {
		Session session = sessionFactory.getCurrentSession();
		Product product = (Product)session.get(Product.class, productID);
		return product;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getProductsByCategory(String category) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from product where category = :category");
		query.setParameter("category", category);
		List<Product> productList = query.list();
		return productList;
	}

	@Override
	public Set<Product> getProductsByFilter(Map<String, List<String>> filterParams) {
		
		List<Product> listOfProducts = getAllProducts();
		
		Set<Product> productsByBrand = new HashSet<Product>();
		Set<Product> productsByCategory = new HashSet<Product>();
		
		Set<String> criterias = filterParams.keySet();
		
		if (criterias.contains("brand")) {
			for (String brandName : filterParams.get("brand")) {
				for (Product product : listOfProducts) {
					if (brandName.equalsIgnoreCase(product.getManufacturer())) {
						productsByBrand.add(product);
					}
				}
			}
		}
		if (criterias.contains("category")) {
			for (String category : filterParams.get("category")) {
				productsByCategory.addAll(this.getProductsByCategory(category));
			}
		}
		
		productsByCategory.retainAll(productsByBrand);
		return productsByCategory;
	}

	@Override
	public void addProduct(Product product) {
		sessionFactory.getCurrentSession().persist(product);		
	}

	@Override
	public Product saveProduct(Product productToBeSaved) {
//		CacheTesting.slowQuery(5000);
//		System.out.println("waiting........................");
		Session session = sessionFactory.getCurrentSession();
		Product product =(Product) session.save(productToBeSaved);		
		return product;
	}

	@Override
	public void deleteProduct(Product productToBeDeleted) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(productToBeDeleted);		
	}

	
}



