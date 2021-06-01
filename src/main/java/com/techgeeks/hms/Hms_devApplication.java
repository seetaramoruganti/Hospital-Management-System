package com.techgeeks.hms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan("com.techgeeks.")
@EntityScan("com.techgeeks.model")
@EnableJpaRepositories("com.techgeeks.repository")
public class Hms_devApplication {

	public static void main(String[] args) {
		SpringApplication.run(Hms_devApplication.class, args);
	}

}

