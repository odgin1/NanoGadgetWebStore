package com.dragomir.webstore.validator;

import java.util.HashSet;
import java.util.Set;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CategoryValidator implements ConstraintValidator<CategoryCheck, String> {

	Set<String> categorySet;

	public CategoryValidator() {
		categorySet = new HashSet<>();
		categorySet.add("Smart Phone");
		categorySet.add("Laptop");
		categorySet.add("Tablet");
		categorySet.add("PC");
		categorySet.add("Scanner");
		categorySet.add("GPS");
	}

	@Override
	public void initialize(CategoryCheck constraintAnnotation) {
		// TODO Auto-generated method stub
	}

	@Override
	public boolean isValid(String value, ConstraintValidatorContext context) {

		for (String categoryAllowed : categorySet) {
			if (value.equals(categoryAllowed)) {
				return true;
			}
		}
		return false;
	}

}
