package com.rkp.examples;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SpringbootWithGitActionsApplication {


	@GetMapping("/hello")
	public String greetings(){
		return "Hello, welcome to GitActions projects with RKP";
	}
	public static void main(String[] args) {
		SpringApplication.run(SpringbootWithGitActionsApplication.class, args);
	}

}
