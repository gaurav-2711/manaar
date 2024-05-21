package cms.manaar.models;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Table(name = "faq_table")
@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Faqs {
    @Id
    @GeneratedValue
    private Integer id;
    private String faqName;
    private String alias;

    //private List<QueAns> queAnsList;

    private boolean status;

//    public List<QueAns> getQueAnsList() {
//        return queAnsList;
//    }
//
//    public void setQueAnsList(List<QueAns> queAnsList) {
//        this.queAnsList = queAnsList;
//    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFaqName() {
        return faqName;
    }

    public void setFaqName(String faqName) {
        this.faqName = faqName;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }



}
