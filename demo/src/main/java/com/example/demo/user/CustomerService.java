package com.example.demo.user;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {

    private final CustomerRepository customerRepository;

    private final PasswordEncoder  passwordEncoder;

    public CustomerService(CustomerRepository customerRepository,
                                   PasswordEncoder passwordEncoder) {
        this.customerRepository = customerRepository;
        this.passwordEncoder = passwordEncoder;
    }

    public Customer signUp(CustomerRequest customerRequest) {
        var customer = new Customer();
        customer.setUsername(customerRequest.userName());
        customer.setPassword(passwordEncoder.encode(customerRequest.password()));
        customer.setRole("User");
        var result = customerRepository.save(customer);
        return result;
    }

}