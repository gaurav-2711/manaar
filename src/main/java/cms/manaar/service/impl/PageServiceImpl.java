package cms.manaar.service.impl;

import cms.manaar.models.Page;
import cms.manaar.models.User;
import cms.manaar.repository.PageRepository;
import cms.manaar.service.PageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
    public Page updatePage(Page page, Integer indexNo) {
        Page existingPage = pageRepository.findByindexNo(indexNo);
        existingPage.setDescription(page.getDescription());
        existingPage.setBannerImg(page.getBannerImg());
        existingPage.setShortHeading(page.getShortHeading());
        existingPage.setTitle(page.getTitle());

        Page updatedPage = pageRepository.save(existingPage);
        return updatedPage;
    }

    @Override
    public void deletePage(Integer indexNo) {
        Page page = pageRepository.findByindexNo(indexNo);
        pageRepository.delete(page);
    }

    @Override
    public Page getPage(Integer indexNo) {
        return pageRepository.findByindexNo(indexNo);
    }
}
