package cms.manaar.models;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

//@Table(name = "faq_que_ans_table")
//@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class QueAns {
    @Id
    @GeneratedValue
    private Integer id;
    private String question;
    private String answer;
  /*  @ManyToMany
    @JoinColumn(name = "faq_id")
    private Faqs faqs;
*/
}
