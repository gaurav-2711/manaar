package cms.manaar.controller;

import cms.manaar.models.Banner;
import cms.manaar.models.Page;
import cms.manaar.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
public class BannerController {
//    @Autowired
    private BannerService bannerService;

    public BannerController(BannerService bannerService) {
        this.bannerService = bannerService;
    }

    @RequestMapping({"/banner", "/banner/"})
    public String banners(Model model) {
        model.addAttribute("banners",bannerService.getAll());
        return "banner";
    }

    @RequestMapping({"/banner/addBanner", "/banner/addBanner/"})
    public String addBannerPage() {
        return "banner-add";
    }

    @RequestMapping(value = {"/banner/save"}, method = RequestMethod.POST)
    public String addBanner(@ModelAttribute("addBannerForm") Banner banner) {
        System.out.println("page : "+banner.getBannerHeading());
        bannerService.add(banner);
        return "redirect:/banner";
    }


    @DeleteMapping("/banner/deleteBanner/{id}")
    public ResponseEntity<String> deleteBanner(@PathVariable Integer id) {
        try {
            bannerService.delete(id);
            return ResponseEntity.ok().body("Banner deleted successfully");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to delete page: " + e.getMessage());
        }
    }

    @GetMapping("/banner/edit/{id}")
    public String updateBanner(Model model,@PathVariable Integer id) {
        Optional<Banner> optionalBanner = bannerService.getById(id);
        if (optionalBanner.isPresent()) {
            Banner banner = optionalBanner.get();
            model.addAttribute("flag","edit");
            model.addAttribute("updateBanner",banner);
            return "banner-add";
        }

        return "banner";
    }

    @RequestMapping(value = {"/banner/update"},  method = RequestMethod.POST)
    public String editBanner(@ModelAttribute("updateBannerForm") Banner banner) {
        System.out.println("id: "+banner.getId());
        bannerService.update(banner, banner.getId());
        return "redirect:/banner";
    }


}
