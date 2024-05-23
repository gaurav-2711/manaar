//package cms.manaar.controller;
//
//import cms.manaar.models.Resource;
//import cms.manaar.service.ResourceService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.*;
//
//
//@Controller
//public class ResourceController {
//
//    @Autowired
//    private ResourceService resourceService;
//    @RequestMapping(value = {"/resource", "/resource/"}, method = RequestMethod.GET)
//    public String resource(Model model) {
//        model.addAttribute("resources",resourceService.getAll());
//        return "resources";
//    }
//
//    @RequestMapping({"/resource/addResource", "/resource/addResource/"})
//    public String addResource(Model model) {
//        return "add-resources";
//    }
//
//    @RequestMapping(value = {"/resource/save"}, method = RequestMethod.POST)
//    public String saveResource(@ModelAttribute("addResourceForm")Resource resource) {
//        System.out.println("sacve----------"+resource.getMetatitle());
////        resourceService.save(resource);
//        return "add-resources";
//    }
//
//    @GetMapping("/resource/edit/{id}")
//    public String editResource(Model model,@PathVariable Integer id) {
////        Optional<Page> optionalPage = resourceService.getById(id);
////        if (optionalPage.isPresent()) {
////            Page page = optionalPage.get();
//            model.addAttribute("flag","edit");
////            model.addAttribute("updatePage",page);
////            return "add-pages";
////        }
//
//        return "add-resources";
//    }
//}
package cms.manaar.controller;

import cms.manaar.models.Page;
import cms.manaar.models.Resource;
import cms.manaar.service.ResourceService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
public class ResourceController {

    @Autowired
    private ResourceService resourceService;

    @RequestMapping({"/resource", "/resource/"})
    public String resource(Model model) {
        model.addAttribute("adminmenu","resource");
        List<Resource> resources=resourceService.getAll();
        model.addAttribute("resources",resources);
        return "resources";
    }

    @RequestMapping({"/resource/addResource", "/resource/addResource/"})
    public String addResource(Model model) {
         model.addAttribute("adminmenu","resource");
        return "add-resources";
    }

@RequestMapping(value = {"/resource/save"}, method = RequestMethod.POST)
public String addResource(@ModelAttribute("addResourceForm") Resource resource, HttpSession session) {

    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    if (auth != null) {
        System.out.println("User authenticated: " + auth.getName());
    } else {
        System.out.println("User not authenticated");
    }

    resourceService.addResource(resource);
    return "redirect:/resources";
}

    @GetMapping("/resource/edit/{id}")
    public String editResource(Model model,@PathVariable Integer id) {
        model.addAttribute("adminmenu","resource");
        Optional<Resource> optionalPage = resourceService.getById(id);
        if (optionalPage.isPresent()) {
            Resource resource = optionalPage.get();
            model.addAttribute("flag", "edit");
            model.addAttribute("updateResource",resource);
        }
        return "add-resources";
    }

    @RequestMapping(value = {"/resource/update"},  method = RequestMethod.POST)
    public String updateResources(@ModelAttribute("updateResourceForm") Resource resource, HttpSession session) {
        resourceService.update(resource.getId(),resource);
        return "redirect:/resource";
    }

    @DeleteMapping("/resource/deleteResource/{id}")
    public ResponseEntity<String> deleteResources(@PathVariable Integer id) {
        try {
            resourceService.deleteById(id);
            return ResponseEntity.ok().body("resources deleted successfully");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to delete resources: " + e.getMessage());
        }
    }
}
