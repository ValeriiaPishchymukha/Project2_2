package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.security.core.Authentication;
import com.example.demo.data.BookRepository;

@Controller
public class HomeController {

    private final BookRepository bookRepository;

    public HomeController(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @GetMapping("/")
    public String showBooks(Model model, Authentication auth) {
        var isAuthenticated = auth != null && auth.isAuthenticated();
        model.addAttribute("isAuthenticated", isAuthenticated);
        return "index";
    }
    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }
}