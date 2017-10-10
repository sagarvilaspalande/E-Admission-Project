package com.mahasoft.admission;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;


@SpringBootApplication
public class AdmissionAppApplication extends SpringBootServletInitializer{

	
	public static void main(String[] args) {
		SpringApplication.run(AdmissionAppApplication.class, args);
	}
	
	
	
}
