package com.example.demo.user;

import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomerDetailsService implements UserDetailsService {

    private final CustomerRepository customerRepository;

    public CustomerDetailsService(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        var customer = customerRepository.findByUsername(username);
        if (customer.isPresent()) {
            var customerObj = customer.get();
            return User.builder()
                    .username(customerObj.getUsername())
                    .password(customerObj.getPassword())
                    .roles(customerObj.getRole())
                    .build();
        } else {
            throw new UsernameNotFoundException("Username not found: " + username);
        }
    }
}