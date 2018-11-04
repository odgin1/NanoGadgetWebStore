package com.dragomir.webstore.validator;

import javax.servlet.http.HttpServletRequest;
import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.support.RequestContext;
import org.springframework.webflow.context.ExternalContext;

import com.dragomir.webstore.domain.Product;
import com.dragomir.webstore.exception.ProductNotFoundException;
import com.dragomir.webstore.service.ProductService;

public class ProductIdValidator implements ConstraintValidator<ProductId, String> {
	
	@Autowired
	private ProductService productService;
	
	public void initialize(ProductId constraintAnnotation) {
		// intentionally left blank; this is the place to initialize the
		// constraint annotation for any sensible default values.
	}

	public boolean isValid(String value, ConstraintValidatorContext context) {
//		Product product;
//		try {
//			product = productService.getProductById(value);
//		} catch (ProductNotFoundException e) {
//			return true;
//		}
//		if (product != null) {
//			return false;
//		}
//		return true;
		
	    if (productService.getProductById(value) != null) {
//	        context.disableDefaultConstraintViolation();
//	        context
//	            .buildConstraintViolationWithTemplate("User " + value + " already exists!")
//	            .addConstraintViolation();
	        return false;
	    }
	    return true;

	}
}