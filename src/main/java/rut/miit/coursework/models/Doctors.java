package rut.miit.coursework.models;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.util.List;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "doctors")
public class Doctors {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "doctorid")
    private int id;

    @ManyToOne
    @JoinColumn(name = "hospitalid")
    private Hospitals hospital;

    @OneToOne
    @JoinColumn(name = "personid")
    private People person;

    @ManyToOne
    @JoinColumn(name = "specializationid")
    private Specializations specialization;

    @Column(name = "licensenumber", columnDefinition = "varchar(20)")
    private String licenseNumber;

    @Column(name = "salary", columnDefinition = "numeric(10,2)")
    private BigDecimal salary;

    @OneToMany(mappedBy = "doctor")
    private List<Visits> visits;

    @OneToMany(mappedBy = "doctor")
    private List<Prescriptions> prescriptions;
}
