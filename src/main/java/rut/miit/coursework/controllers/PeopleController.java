package rut.miit.coursework.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import rut.miit.coursework.models.People;
import rut.miit.coursework.services.PeopleService;

import java.util.List;

@Controller
public class PeopleController {
    private final PeopleService peopleService;

    @Autowired
    public PeopleController(PeopleService peopleService) {
        this.peopleService = peopleService;
    }

    @GetMapping("/people")
    public String getAllPeople(Model model) {
        List<People> people = peopleService.getAllPeople();
        model.addAttribute("people", people);
        model.addAttribute("newPerson", new People());
        return "people";
    }

    @PostMapping("/people/add")
    public String addPerson(@ModelAttribute People person) {
        peopleService.addPerson(person);
        return "redirect:/people";
    }

    @GetMapping("/people/edit/{id}")
    public String editPersonForm(@PathVariable Integer id, Model model) {
        People person = peopleService.getPerson(id);
        model.addAttribute("person", person);
        return "edit_person";
    }

    @PostMapping("/people/update")
    public String updatePerson(@ModelAttribute People person) {
        peopleService.updatePerson(person);
        return "redirect:/people";
    }

    @GetMapping("/people/delete/{id}")
    public String deletePerson(@PathVariable Integer id) {
        peopleService.deletePerson(id);
        return "redirect:/people";
    }
    @GetMapping("/people/details/{id}")
    public String getPersonDetails(@PathVariable Integer id, Model model) {
        People person = peopleService.getPerson(id);
        String details = peopleService.findPersonDetails(id);
        model.addAttribute("person", person);
        model.addAttribute("details", details);
        return "details";
    }
}

