package cms.manaar.service;

import cms.manaar.models.Page;

import java.util.List;
import java.util.Optional;

public interface PageService {
    Page addPage(Page page);

    List<Page> getAllPage();

    Page updatePage(Page page, Integer id);

    void deletePage(Integer id);
//
//    Page getPage(Integer indexNo);
    Optional<Page> getById(Integer id);

}
