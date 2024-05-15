package cms.manaar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DashboardController {
    @RequestMapping(path = {"/home", "/home/"})
    public String dashboard() {
        return "dashboard"; // Redirect to your JSP page
    }
    @RequestMapping({"/content", "/content/"})
    public String content() {
        return "content";
    }
}
