package rut.miit.coursework.models;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import jakarta.persistence.*;
import java.util.List;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "contacts")
public class Contacts {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "contactid")
    private int id;

    @Column(name = "phone",columnDefinition = "varchar(20)")
    private String phone;

    @Column(name = "address",columnDefinition = "varchar(100)")
    private String address;

    @OneToMany(mappedBy = "contact")
    @JsonManagedReference
    private List<People> people;

    @OneToMany(mappedBy = "contact")
    private List<Hospitals> hospitals;
}

