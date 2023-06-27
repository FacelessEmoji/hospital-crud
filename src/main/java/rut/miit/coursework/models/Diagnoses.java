package rut.miit.coursework.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "diagnoses")
public class Diagnoses {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "diagnosisid")
    private int id;

    @Column(name = "diagnosisname", columnDefinition = "varchar(100)")
    private String diagnosisName;

    @OneToMany(mappedBy = "diagnosis")
    private List<Visits> visits;

    // Getters and Setters
}
