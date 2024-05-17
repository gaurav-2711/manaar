package cms.manaar.controller;

import cms.manaar.models.JwtRequest;
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
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("page-signin");
        return "page-signin";
    }
}
