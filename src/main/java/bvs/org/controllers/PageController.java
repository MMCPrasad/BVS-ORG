/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bvs.org.controllers;

import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
//import bvs.org.service.PageService;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author asus
 */
@Controller
public class PageController {

    @GetMapping("/")
    public String dashboard() {
        return "home";
    }

    @GetMapping("/history")
    public String history() {
        return "history";
    }

}
