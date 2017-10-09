package com.mahasoft.admission;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@EnableAutoConfiguration
@EnableWebMvc
@SpringBootApplication
@ComponentScan("com.mahasoft.admission.login")
public class IAdmissionApplication {

	public static void main(String[] args) {
		SpringApplication.run(IAdmissionApplication.class, args);
	}
	
	
}
