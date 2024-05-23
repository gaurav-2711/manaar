package cms.manaar.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.*;

import java.util.Date;

@Table(name = "resource_table")
@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Resource {
    @Id
    @GeneratedValue
    private Integer id;
    private String metatitle;
    private String metadescription;
    private Integer bannerid;
    private Integer categoryId;
    private String author;
    private Date newsDate;
    private String tagId;
    private String resourceThumbnail;
    private String resourceAttachement;
    private String resourceExternalAttachement;
    private String resourceTitle;
    private  String resourceShortDescription;
    private String resouceContent;
    private  boolean status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMetatitle() {
        return metatitle;
    }

    public void setMetatitle(String metatitle) {
        this.metatitle = metatitle;
    }

    public String getMetadescription() {
        return metadescription;
    }

    public void setMetadescription(String metadescription) {
        this.metadescription = metadescription;
    }

    public Integer getBannerid() {
        return bannerid;
    }

    public void setBannerid(Integer bannerid) {
        this.bannerid = bannerid;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getNewsDate() {
        return newsDate;
    }

    public void setNewsDate(Date newsDate) {
        this.newsDate = newsDate;
    }

    public String getTagId() {
        return tagId;
    }

    public void setTagId(String tagId) {
        this.tagId = tagId;
    }

    public String getResourceThumbnail() {
        return resourceThumbnail;
    }

    public void setResourceThumbnail(String resourceThumbnail) {
        this.resourceThumbnail = resourceThumbnail;
    }

    public String getResourceAttachement() {
        return resourceAttachement;
    }

    public void setResourceAttachement(String resourceAttachement) {
        this.resourceAttachement = resourceAttachement;
    }

    public String getResourceExternalAttachement() {
        return resourceExternalAttachement;
    }

    public void setResourceExternalAttachement(String resourceExternalAttachement) {
        this.resourceExternalAttachement = resourceExternalAttachement;
    }

    public String getResourceTitle() {
        return resourceTitle;
    }

    public void setResourceTitle(String resourceTitle) {
        this.resourceTitle = resourceTitle;
    }

    public String getResourceShortDescription() {
        return resourceShortDescription;
    }

    public void setResourceShortDescription(String resourceShortDescription) {
        this.resourceShortDescription = resourceShortDescription;
    }

    public String getResouceContent() {
        return resouceContent;
    }

    public void setResouceContent(String resouceContent) {
        this.resouceContent = resouceContent;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
