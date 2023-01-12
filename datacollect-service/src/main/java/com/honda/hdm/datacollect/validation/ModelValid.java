/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.honda.hdm.datacollect.validation;

import com.honda.hdm.datacollect.validation.impl.ModelValidator;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import javax.validation.Constraint;
import javax.validation.Payload;

/**
 *
 * @author VJC80587
 */
@Documented
@Constraint(validatedBy = ModelValidator.class)
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
public @interface ModelValid {
     String message() default "Model not valid";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
