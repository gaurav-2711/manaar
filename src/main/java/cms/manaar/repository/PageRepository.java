package cms.manaar.repository;

import cms.manaar.models.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PageRepository extends JpaRepository<Page, Integer> {
//    Page findByindexNo(Integer indexNo);

//    void deleteByindexNo(Integer indexNo);

    @Override
    void delete(Page page);
}
