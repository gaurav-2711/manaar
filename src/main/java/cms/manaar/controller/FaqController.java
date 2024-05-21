package cms.manaar.controller;

import cms.manaar.models.Banner;
import cms.manaar.models.Faqs;
import cms.manaar.service.FaqsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
public class FaqController {
    @Autowired
    private FaqsService faqsService;

    @RequestMapping({"/faqs", "/faqs/"})
    public String faqs(Model model) {
        model.addAttribute("faqs",faqsService.getAll());
        return "faqs";
    }

    @RequestMapping({"/faqs/addFaqs", "/faqs/addFaqs/"})
    public String addFaqsPage() {
        return "faqs-add";
    }

    @RequestMapping(value = {"/faqs/save"}, method = RequestMethod.POST)
    public String addFaqs(@ModelAttribute("addFaqsForm") Faqs faqs) {
        faqsService.add(faqs);
        return "redirect:/faqs";
    }


    @DeleteMapping("/faqs/deleteFaqs/{id}")
    public ResponseEntity<String> deleteFaqs(@PathVariable Integer id) {
        try {
            faqsService.delete(id);
            return ResponseEntity.ok().body("FAQs deleted successfully");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to delete FAQs: " + e.getMessage());
        }
    }

    @GetMapping("/faqs/edit/{id}")
    public String updateFaqs(Model model, @PathVariable Integer id) {
        Optional<Faqs> optionalFaqs = faqsService.getById(id);
        if (optionalFaqs.isPresent()) {
            Faqs faqs = optionalFaqs.get();
            model.addAttribute("flag", "edit");
            model.addAttribute("updateFaqs", faqs);
            return "faqs-add";
        }
        return "faqs";
    }

    @RequestMapping(value = {"/faqs/update"}, method = RequestMethod.POST)
    public String editFaqs(@ModelAttribute("updateFaqsForm") Faqs faqs) {
        System.out.println("id: " + faqs.getId());
        faqsService.update(faqs.getId(), faqs);
        return "redirect:/faqs";
    }

}
