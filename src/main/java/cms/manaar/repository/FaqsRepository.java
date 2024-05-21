package cms.manaar.repository;

import cms.manaar.models.Faqs;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FaqsRepository extends JpaRepository<Faqs, Integer> {
}
