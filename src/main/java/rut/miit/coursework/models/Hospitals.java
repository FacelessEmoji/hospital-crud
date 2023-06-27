package rut.miit.coursework.models;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import jakarta.persistence.*;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "hospitals")
public class Hospitals {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "hospitalid")
    private int id;

    @ManyToOne
    @JoinColumn(name = "contactid")
    private Contacts contact;

    @Column(name = "hospitalname",columnDefinition = "varchar(100)")
    private String hospitalName;

    @OneToMany(mappedBy = "hospital")
    private List<Doctors> doctors;

    @OneToMany(mappedBy = "hospital")
    private List<Patients> patients;
}

