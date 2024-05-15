package cms.manaar.models;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.*;

//@Table(name = "banner_table")
//@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Banner {
    private Integer id;
    private String bannerName;
    private String bannerHeading;
    private String bannerImage;
    private boolean status;
}
