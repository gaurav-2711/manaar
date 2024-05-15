package cms.manaar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ResourceController {
    @RequestMapping({"/resource", "/resource/"})
    public String resource() {
        return "resources";
    }

    @RequestMapping({"/resource/addResource", "/resource/addResource/"})
    public String addResource() {
        return "add-resources";
    }

}
