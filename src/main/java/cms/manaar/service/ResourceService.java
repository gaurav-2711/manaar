package cms.manaar.service;

import cms.manaar.models.Resource;

import java.util.List;
import java.util.Optional;

public interface ResourceService {
    Optional<Resource> getById(Integer id);
    List<Resource> getAll();
    Resource addResource(Resource resource);
    void deleteById(Integer id);
   Resource update(Integer id, Resource resource);
}
