package com.honda.hdm.datacollect.security.aspect;

import com.honda.hdm.datacollect.security.configuration.ResourceServerConfiguration;
import org.springframework.context.annotation.Import;

import java.lang.annotation.*;

@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Inherited
@Import({ResourceServerConfiguration.class})
public @interface EnableSecurity {
}
