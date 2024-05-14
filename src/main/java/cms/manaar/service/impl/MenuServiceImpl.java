package cms.manaar.service.impl;

import cms.manaar.models.Menu;
import cms.manaar.repository.MenuRepository;
import cms.manaar.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuRepository menuRepository;
    @Override
    public Menu addMenu(Menu menu) {
        return menuRepository.save(menu);
    }

    @Override
    public List<Menu> getAllMenu() {
        return menuRepository.findAll();
    }

    @Override
    public Menu updateMenu(Menu menu, Integer menuId) {
        Menu existingMenu = menuRepository.findByMenuId(menuId);
        existingMenu.setMenuName(menu.getMenuName());
        existingMenu.setParentId(menu.getParentId());
        existingMenu.setUrl_pattern(menu.getUrl_pattern());
        Menu updatedMenu = menuRepository.save(existingMenu);
        return updatedMenu;
    }

    @Override
    public void deleteMenu(Integer menuId) {
         menuRepository.deleteById(menuId);
    }
}
