package cms.manaar.controller;

import cms.manaar.models.Page;
import cms.manaar.models.User;
import cms.manaar.service.PageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/page")
public class PageController {
    @Autowired
    private PageService pageService;

    @PostMapping("/addPage")
    public ResponseEntity<Page> addPage(@RequestBody Page page) {
        return ResponseEntity.ok(pageService.addPage(page));
    }

    @GetMapping("/getAllPage")
    public ResponseEntity<List<Page>> getAllPage() {
        return ResponseEntity.ok(pageService.getAllPage());
    }

    @PutMapping("/updatePage/{indexNo}")
    public ResponseEntity<Page> updatePage(@RequestBody Page page, @PathVariable Integer indexNo) {
        return ResponseEntity.ok(pageService.updatePage(page, indexNo));
    }

    @DeleteMapping("/deletePage/{indexNo}")
    public ResponseEntity<String> deletePage(@PathVariable Integer indexNo) {
        pageService.deletePage(indexNo);
        return ResponseEntity.ok("Successfully Deleted");
    }

    @GetMapping("/getSpecificPage/{indexNo}")
    public ResponseEntity<Page> getSpecificPage(@PathVariable Integer indexNo) {
        return ResponseEntity.ok(pageService.getPage(indexNo));
    }
}
