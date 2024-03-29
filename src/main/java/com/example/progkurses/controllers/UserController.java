package com.example.progkurses.controllers;

import com.example.progkurses.models.User;
import com.example.progkurses.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    @GetMapping("/login")
    public String login(){
        return "login";
    }
    @GetMapping("/registration")
    public String registration(){
        return "registration";
    }
    @PostMapping("/registration")
    public String createUser(User user, Model model){
        if(!userService.createUser(user)){
            model.addAttribute("errorMessage","User's email: "+user.getEmail()+" already exists");
            return "registration";
        }
        return "redirect:/login";
    }
    @GetMapping("/hello")
    public String securityUrl(){
        return "hello";
    }
}
