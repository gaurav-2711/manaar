package cms.manaar.controller;

import cms.manaar.models.Banner;
import cms.manaar.models.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

    @RequestMapping(value = {"/banner/save"}, method = RequestMethod.POST)
    public String addBanner(@ModelAttribute("addBannerForm") Banner banner) {
        System.out.println("page : "+banner.getBannerHeading());

        return "redirect:/banner";
    }

}
