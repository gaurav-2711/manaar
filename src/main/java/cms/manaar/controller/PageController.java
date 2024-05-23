package cms.manaar.controller;

import cms.manaar.models.Page;
import cms.manaar.service.PageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.Optional;

@Controller
//@RequestMapping("/page")
public class PageController {
    @Autowired
    private PageService pageService;

    @GetMapping({"/page","/page/"})
    public String pages(Model model) {
        model.addAttribute("adminmenu","page");
        model.addAttribute("pages",pageService.getAllPage());
        return "pages";
    }

    @RequestMapping({"/page/addPage", "/page/addPage/"})
    public String addPage(Model model) {
         model.addAttribute("adminmenu","page");
        return "add-pages";
    }

    @RequestMapping({"/page/pageSignin", "/page/pageSignin/"})
    public String pageSignin(Model model) {
        model.addAttribute("adminmenu","page");
        return "page-signin";
    }


//    @PostMapping("/page/addPage")
//    public ResponseEntity<Page> addPage(@RequestBody Page page) {
//        return ResponseEntity.ok(pageService.addPage(page));
//    }
    @RequestMapping(value = {"/page/save"}, method = RequestMethod.POST)
    public String addPage(@ModelAttribute("addPageForm") Page page) {
        System.out.println("page : "+page.getTitle());
//        ModelAndView modelAndView = new ModelAndView();
        pageService.addPage(page);
//        modelAndView.setViewName("pages");
        return "redirect:/page";
    }

//    @GetMapping("/page/getAllPage")
//    public ResponseEntity<List<Page>> getAllPage() {
//
//        return ResponseEntity.ok(pageService.getAllPage());
//    }
@GetMapping("/page/edit/{id}")
public String updatePage(Model model,@PathVariable Integer id) {
     model.addAttribute("adminmenu","page");
    Optional<Page> optionalPage = pageService.getById(id);
    if (optionalPage.isPresent()) {
        Page page = optionalPage.get();
        model.addAttribute("flag","edit");
        model.addAttribute("updatePage",page);
        return "add-pages";
    }

    return "pages";
}

    @RequestMapping(value = {"/page/update"},  method = RequestMethod.POST)
    public String editPage(@ModelAttribute("updatePageForm") Page page) {
        System.out.println("id: "+page.getId());
        pageService.updatePage(page, page.getId());
        return "redirect:/page";
    }

    @DeleteMapping("/page/deletePage/{id}")
    public ResponseEntity<String> deletePage(@PathVariable Integer id) {
        try {
            pageService.deletePage(id);
            return ResponseEntity.ok().body("Page deleted successfully");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to delete page: " + e.getMessage());
        }
    }

//    @GetMapping("/page/getSpecificPage/{indexNo}")
//    public ResponseEntity<Page> getSpecificPage(@PathVariable Integer indexNo) {
//        return ResponseEntity.ok(pageService.getPage(indexNo));
//    }




}
