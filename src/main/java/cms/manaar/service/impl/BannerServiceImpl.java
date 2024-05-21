package cms.manaar.service.impl;

import cms.manaar.models.Banner;
import cms.manaar.models.Menu;
import cms.manaar.models.Page;
import cms.manaar.repository.BannerRepository;
import cms.manaar.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BannerServiceImpl implements BannerService {

//    @Autowired
    private BannerRepository bannerRepository;

    public BannerServiceImpl(BannerRepository bannerRepository) {
        this.bannerRepository = bannerRepository;
    }

    @Override
    public Banner add(Banner banner) {
        return bannerRepository.save(banner);
    }

    @Override
    public void delete(Integer id) {
        bannerRepository.deleteById(id);
    }

    @Override
    public Banner update(Banner banner, Integer id) {
        Optional<Banner> optionalBanner = bannerRepository.findById(id);
        if (optionalBanner.isPresent()) {
            Banner existingBanner = optionalBanner.get();
            existingBanner.setBannerHeading(banner.getBannerHeading());
            existingBanner.setBannerImage(banner.getBannerImage());
            existingBanner.setBannerName(banner.getBannerName());
            existingBanner.setStatus(banner.isStatus());
            Banner updatedBanner = bannerRepository.save(existingBanner);
            return updatedBanner;
        } else {
            throw new IllegalArgumentException("Banner not found with id: " + id);
        }
    }

    @Override
    public List<Banner> getAll() {
        return bannerRepository.findAll();
    }

    @Override
    public Optional<Banner> getById(Integer id) {
        return bannerRepository.findById(id);
    }
}
