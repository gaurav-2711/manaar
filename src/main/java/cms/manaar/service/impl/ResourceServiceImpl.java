package cms.manaar.service.impl;

import cms.manaar.models.Page;
import cms.manaar.models.Resource;
import cms.manaar.repository.ResourceRepository;
import cms.manaar.service.ResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ResourceServiceImpl implements ResourceService {
    @Autowired
    private ResourceRepository resourceRepository;
    @Override
    public Optional<Resource> getById(Integer id) {
        return resourceRepository.findById(id);
    }

    @Override
    public List<Resource> getAll() {
        return resourceRepository.findAll();
    }

    @Override
    public Resource addResource(Resource resource) {
        return resourceRepository.save(resource);
    }

    @Override
    public void deleteById(Integer id) {
        resourceRepository.deleteById(id);
    }

    @Override
    public Resource update(Integer id, Resource resource) {
        Optional<Resource> optionalResource = resourceRepository.findById(id);
        if (optionalResource.isPresent()) {
            Resource existingResource = optionalResource.get();
            // Update the existing page with the new information
            existingResource.setAuthor(resource.getAuthor());
            existingResource.setMetatitle(resource.getMetatitle());
            existingResource.setMetadescription(resource.getMetadescription());
            existingResource.setResourceAttachement(resource.getResourceAttachement());
            existingResource.setResourceThumbnail(resource.getResourceThumbnail());
            existingResource.setResourceExternalAttachement(resource.getResourceExternalAttachement());
            existingResource.setResourceTitle(resource.getResourceTitle());


            return resourceRepository.save(existingResource);
        } else {
            // Handle the case where the page with the specified id is not found
            throw new IllegalArgumentException("Page not found with id: " + id);
        }    }
}
