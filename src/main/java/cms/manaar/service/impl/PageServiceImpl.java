package cms.manaar.service.impl;

import cms.manaar.models.Page;
import cms.manaar.models.User;
import cms.manaar.repository.PageRepository;
import cms.manaar.service.PageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PageServiceImpl implements PageService {

    @Autowired
    private PageRepository pageRepository;

    @Override
    public Page addPage(Page page) {
        return pageRepository.save(page);
    }

    @Override
    public List<Page> getAllPage() {
        return pageRepository.findAll();
    }

    @Override
    public Page updatePage(Page page, Integer id) {
        Optional<Page> optionalPage = pageRepository.findById(id);
        if (optionalPage.isPresent()) {
            Page existingPage = optionalPage.get();
            // Update the existing page with the new information
            existingPage.setAlias(page.getAlias());
            existingPage.setFaqid(page.getFaqid());
            existingPage.setTitle(page.getTitle());
            existingPage.setMetatitle(page.getMetatitle());
            existingPage.setBannerid(page.getBannerid());
            existingPage.setFulldescription(page.getFulldescription());
            existingPage.setMetadescription(page.getMetadescription());
            existingPage.setShortdescription(page.getShortdescription());
            existingPage.setWidgetid(page.getWidgetid());

            return pageRepository.save(existingPage);
        } else {
            // Handle the case where the page with the specified id is not found
            throw new IllegalArgumentException("Page not found with id: " + id);
        }
    }

    @Override
    public void deletePage(Integer id) {
        pageRepository.deleteById(id);
    }
//
//    @Override
//    public Page getPage(Integer indexNo) {
//        return pageRepository.findByindexNo(indexNo);
//    }
}
