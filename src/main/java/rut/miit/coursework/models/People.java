package rut.miit.coursework.models;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.sql.Date;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "people")
public class People {
    @Id
    @Column(name = "personid")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "contactid", referencedColumnName = "contactid")
    @JsonBackReference
    private Contacts contact;

    @Column(name = "firstname", columnDefinition = "varchar(50)")
    private String firstName;

    @Column(name = "lastname", columnDefinition = "varchar(50)")
    private String lastName;

    @Column(name = "dateofbirth")
    @Temporal(TemporalType.DATE)
    private Date dateOfBirth;

    @OneToOne(mappedBy = "person")
    private Patients patient;
}




