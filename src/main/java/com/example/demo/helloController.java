package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class helloController {
    
    @GetMapping("/")  // Changed to @GetMapping which is more specific
    public String hello() {
        return "Hello World!";
    }
}