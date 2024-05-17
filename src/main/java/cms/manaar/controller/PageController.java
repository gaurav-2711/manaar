package cms.manaar.controller;

import cms.manaar.models.Page;
import cms.manaar.service.PageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
//@RequestMapping("/page")
public class PageController {
    @Autowired
    private PageService pageService;

    @GetMapping({"/page","/page/"})
    public String pages(Model model) {
        model.addAttribute("pages",pageService.getAllPage());
        return "pages";
    }

    @RequestMapping({"/page/addPage", "/page/addPage/"})
    public String addPage(Model model) {
        return "add-pages";
    }

    @RequestMapping({"/page/pageSignin", "/page/pageSignin/"})
    public String pageSignin() {
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

    @PutMapping("/page/updatePage/{indexNo}")
    public ResponseEntity<Page> updatePage(@RequestBody Page page, @PathVariable Integer id) {
        return ResponseEntity.ok(pageService.updatePage(page, id));
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
