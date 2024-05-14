package cms.manaar.models;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.util.Date;

//@Table(name = "seo_table")
// @Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SEO {
    @Id
    @GeneratedValue
    private Integer id;
    private Integer pageId;
    private  Integer subPageId;
    private String metaTitle;
    private String metaKeyword;
    @CreationTimestamp
    private Date entryDate;
    @UpdateTimestamp
    private Date modifyDate;

}
