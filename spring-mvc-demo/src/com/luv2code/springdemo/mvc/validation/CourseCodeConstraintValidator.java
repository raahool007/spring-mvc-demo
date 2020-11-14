package com.luv2code.springdemo.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode, String> {
	
	private String[] coursePrefixes;
	
	@Override
	public void initialize(CourseCode theCourseCode) {
		coursePrefixes = theCourseCode.value();
	}

	@Override
	public boolean isValid(String arg0, ConstraintValidatorContext arg1) {
		
		boolean result = false;
		if(arg0 != null) {
			for(String tempPrefix : coursePrefixes) {
				result = arg0.startsWith(tempPrefix);
				if(result) break;
			}
		}
		else result = true;
		
		return result;
	}

}
