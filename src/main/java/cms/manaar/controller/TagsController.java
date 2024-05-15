package cms.manaar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TagsController {
    @RequestMapping({"/tags", "/tags/"})
    public String tags() {
        return "tags";
    }

    @RequestMapping({"/tags/addTag", "/tags/addTag/"})
    public String addTag() {
        return "add-tag";
    }
}
