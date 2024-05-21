package cms.manaar.service;

import cms.manaar.models.Faqs;

import java.util.List;
import java.util.Optional;

public interface FaqsService {
    Optional<Faqs> getById(Integer id);
    List<Faqs> getAll();
    Faqs add(Faqs faqs);
    Faqs update(Integer id, Faqs faqs);
    void delete(Integer id);
}
