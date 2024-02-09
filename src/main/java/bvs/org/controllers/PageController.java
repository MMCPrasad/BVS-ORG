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

@Controller
public class PageController {

    @GetMapping("/")
    public String dashboard() {
        return "home";
    }

    @GetMapping("/home")
    public String dashboards() {
        return "home";
    }

    @GetMapping("/history")
    public String history() {
        return "aboutUs/history";
    }

    @GetMapping("/What-We-Do")
    public String whatWeDo() {
        return "aboutUs/whatWeDo";
    }

    @GetMapping("/Vision-Mission")
    public String vision() {
        return "aboutUs/vision";
    }

    @GetMapping("/Board-Directors")
    public String directors() {
        return "aboutUs/board-directors";
    }

    @GetMapping("/Religious-Advisors")
    public String advisors() {
        return "aboutUs/religious-advisors";
    }

    @GetMapping("/Audit-Committee")
    public String committee() {
        return "aboutUs/audit-committee";
    }

    @GetMapping("/Resident-Monks")
    public String monks() {
        return "aboutUs/resident-monks";
    }

}
