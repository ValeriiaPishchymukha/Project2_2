package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.example.demo.data.BookRepository;

@Controller
public class HomeController {

    private BookRepository bookRepository;

    public HomeController(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }
    @GetMapping("/")
    public String getAllBooks(Model model) {
        model.addAttribute("books", bookRepository.findAll());
        return "index";
    }
}