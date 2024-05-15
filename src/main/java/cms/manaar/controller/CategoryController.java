package cms.manaar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CategoryController {
    @RequestMapping({"/category", "/category/"})
    public String category() {
        return "category";
    }

    @RequestMapping({"/category/addCategory", "/category/addCategory/"})
    public String addCategory() {
        return "add-category";
    }
}
