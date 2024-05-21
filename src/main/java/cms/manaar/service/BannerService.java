package cms.manaar.service;

import cms.manaar.models.Banner;

import java.util.List;
import java.util.Optional;

public interface BannerService {

    Banner add(Banner banner);

    void delete(Integer id);

    Banner update(Banner banner, Integer id);

    List<Banner> getAll();

    Optional<Banner> getById(Integer id);

}
