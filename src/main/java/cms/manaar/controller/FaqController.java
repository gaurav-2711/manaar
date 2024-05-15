package cms.manaar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FaqController {
    @RequestMapping({"/faqs", "/faqs/"})
    public String faqs() {
        return "faqs";
    }

    @RequestMapping({"/faqs/addFaqs","/faqs/addFaqs/"})
    public String addFaqs() {
        return "faqs-add";
    }
}
