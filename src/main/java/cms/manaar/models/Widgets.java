package cms.manaar.models;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.util.Date;

//@Table(name = "widgets_table")
// @Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Widgets {
    @Id
    @GeneratedValue
    private Integer id;
    private  String widgetsName;
    private  String logo;
    private String description;
    @CreationTimestamp
    private Date entryDate;
    @UpdateTimestamp
    private Date modifyDate;


}
