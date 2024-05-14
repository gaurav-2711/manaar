package cms.manaar.service;

import cms.manaar.models.Menu;

import java.util.List;

public interface MenuService {
    Menu addMenu(Menu menu);

    List<Menu> getAllMenu();

    Menu updateMenu(Menu menu, Integer menuId);

    void deleteMenu(Integer menuId);
}
