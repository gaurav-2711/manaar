package cms.manaar.controller;

import cms.manaar.models.Menu;
import cms.manaar.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class MenuController {
    @Autowired
    private MenuService menuService;

    @PostMapping("/addMenu")
    public ResponseEntity<Menu> addMenu(@RequestBody Menu menu) {
        return ResponseEntity.ok(menuService.addMenu(menu));
    }

    @GetMapping("/getAllMenu")
    public ResponseEntity<List<Menu>> getAllMenu() {
        return ResponseEntity.ok(menuService.getAllMenu());
    }

    @PutMapping("/updateMenu")
    public ResponseEntity<Menu> updateMenu(@RequestBody Menu menu, @PathVariable Integer menuId) {
        return ResponseEntity.ok(menuService.updateMenu(menu, menuId));
    }

    @DeleteMapping("/deleteMenuById")
    public ResponseEntity<String> deleteMenuById(@PathVariable Integer menuId) {
        menuService.deleteMenu(menuId);
        return ResponseEntity.ok("Successfully Deleted");
    }
}
