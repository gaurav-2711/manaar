package cms.manaar.controller;

import cms.manaar.models.JwtRequest;
import cms.manaar.models.User;
import cms.manaar.models.UserCredentials;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {
    @RequestMapping({"/register"})
    public String register() {
        return "register";
    }

    @RequestMapping("/login")
    public String login() {
        return "page-signin";
    }
}
