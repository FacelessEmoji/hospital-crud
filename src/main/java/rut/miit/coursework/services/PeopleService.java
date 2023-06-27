package rut.miit.coursework.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rut.miit.coursework.models.People;
import rut.miit.coursework.repositories.PeopleRepository;

import java.util.ArrayList;
import java.util.List;

@Service
public class PeopleService {
    private final PeopleRepository peopleRepository;

    @Autowired
    public PeopleService(PeopleRepository peopleRepository) {
        this.peopleRepository = peopleRepository;
    }

    public List<People> getAllPeople() {
        List<People> people = new ArrayList<>();
        peopleRepository.findAll().forEach(people::add);
        return people;
    }

    public People getPerson(Integer id) {
        return peopleRepository.findById(id).orElse(null);
    }

    public void addPerson(People person) {
        peopleRepository.save(person);
    }

    public void updatePerson(People person) {
        peopleRepository.save(person);
    }

    public void deletePerson(Integer id) {
        peopleRepository.deleteById(id);
    }

    public String findPersonDetails(Integer personId) {
        return peopleRepository.findPersonDetails(personId);
    }

}

