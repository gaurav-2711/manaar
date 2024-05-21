package cms.manaar.service.impl;

import cms.manaar.models.Banner;
import cms.manaar.models.Faqs;
import cms.manaar.repository.FaqsRepository;
import cms.manaar.service.FaqsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class FaqsServiceImpl implements FaqsService {

    @Autowired
    private FaqsRepository faqsRepository;
    @Override
    public Optional<Faqs> getById(Integer id) {
        return faqsRepository.findById(id);
    }

    @Override
    public List<Faqs> getAll() {
        return faqsRepository.findAll();
    }

    @Override
    public Faqs add(Faqs faqs) {
        return faqsRepository.save(faqs);
    }

    @Override
    public Faqs update(Integer id, Faqs faqs) {
        Optional<Faqs> optionalFaqs = faqsRepository.findById(id);
        if (optionalFaqs.isPresent()) {
            Faqs existingFaqs = optionalFaqs.get();
            existingFaqs.setFaqName(faqs.getFaqName());
            existingFaqs.setAlias(faqs.getAlias());
            existingFaqs.setStatus(faqs.isStatus());
            Faqs updatedFaqs = faqsRepository.save(existingFaqs);
            return updatedFaqs;
        } else {
            throw new IllegalArgumentException("FAQs not found with id: " + id);
        }    }

    @Override
    public void delete(Integer id) {
        faqsRepository.deleteById(id);
    }
}
