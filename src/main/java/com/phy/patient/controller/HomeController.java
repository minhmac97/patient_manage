package com.phy.patient.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
    @RequestMapping(value = {"/admin/home"}, method = RequestMethod.GET)
    public String home( ModelMap model ) {
        model.addAttribute("pageTitle", "Trang chủ");
        return "home";
    }
    @RequestMapping(value = {"/admin/login"}, method = RequestMethod.GET)
    public String login( ModelMap model ) {
        model.addAttribute("pageTitle", "Đăng nhập");
        return "login";
    }
}
