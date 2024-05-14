package cms.manaar.service;

import cms.manaar.models.Page;

import java.util.List;

public interface PageService {
    Page addPage(Page page);

    List<Page> getAllPage();

    Page updatePage(Page page, Integer indexNo);

    void deletePage(Integer indexNo);

    Page getPage(Integer indexNo);

}
