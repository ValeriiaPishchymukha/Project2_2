package com.example.demo.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.example.demo.user.Customer;
import com.example.demo.user.CustomerRequest;
import com.example.demo.user.CustomerService;

@RestController
public class SignUpRestController {

    private final CustomerService customerService;

    public SignUpRestController(CustomerService customerService) {
        this.customerService = customerService;
    }

    @PostMapping("/signup")
    public Customer signUpNewUser(@RequestBody CustomerRequest user) {

        return customerService.signUp(user);
    }
}