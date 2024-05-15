package cms.manaar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BannerController {
    @RequestMapping({"/banner", "/banner/"})
    public String banners() {
        return "banner";
    }

    @RequestMapping({"/banner/addBanner", "/banner/addBanner/"})
    public String addResource() {
        return "banner-add";
    }

}
