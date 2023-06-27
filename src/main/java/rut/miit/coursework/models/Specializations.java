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
@Table(name = "specializations")
public class Specializations {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "specializationid")
    private int id;

    @Column(name = "specializationname", columnDefinition = "varchar(100)")
    private String specializationName;

    @OneToMany(mappedBy = "specialization")
    private List<Doctors> doctors;

    // Getters and Setters
}
