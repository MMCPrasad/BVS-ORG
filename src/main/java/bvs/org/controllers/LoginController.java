package bvs.org.controllers;

import bvs.org.model.User;
import bvs.org.service.LoginService;
import jakarta.servlet.http.HttpSession;
import java.util.Hashtable;
import javax.naming.Context;
import javax.naming.NamingException;
import javax.naming.ldap.InitialLdapContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {

    @Autowired
    LoginService loginService;

    @PostMapping("/login")
    public String checkLogin(@RequestParam String username, @RequestParam String password, HttpSession session) {

        User user = loginService.checkLogin(username, password);

        if (user == null) {
            return "error";
        } else {
            session.setAttribute("uid", user.getId());
            session.setAttribute("username", username);
            return "ok";
        }
    }

}
