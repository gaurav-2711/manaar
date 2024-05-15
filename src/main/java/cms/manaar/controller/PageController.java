package cms.manaar.controller;

import cms.manaar.models.Page;
import cms.manaar.service.PageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
    public String addPage() {
        return "add-pages";
    }

    @RequestMapping({"/page/pageSignin", "/page/pageSignin/"})
    public String pageSignin() {
        return "page-signin";
    }


    @PostMapping("/page/addPage")
    public ResponseEntity<Page> addPage(@RequestBody Page page) {
        return ResponseEntity.ok(pageService.addPage(page));
    }

    @GetMapping("/page/getAllPage")
    public ResponseEntity<List<Page>> getAllPage() {

        return ResponseEntity.ok(pageService.getAllPage());
    }

    @PutMapping("/page/updatePage/{indexNo}")
    public ResponseEntity<Page> updatePage(@RequestBody Page page, @PathVariable Integer indexNo) {
        return ResponseEntity.ok(pageService.updatePage(page, indexNo));
    }

    @DeleteMapping("/page/deletePage/{indexNo}")
    public ResponseEntity<String> deletePage(@PathVariable Integer indexNo) {
        pageService.deletePage(indexNo);
        return ResponseEntity.ok("Successfully Deleted");
    }

    @GetMapping("/page/getSpecificPage/{indexNo}")
    public ResponseEntity<Page> getSpecificPage(@PathVariable Integer indexNo) {
        return ResponseEntity.ok(pageService.getPage(indexNo));
    }




}
