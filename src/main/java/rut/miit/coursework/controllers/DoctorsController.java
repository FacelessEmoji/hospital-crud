package rut.miit.coursework.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import rut.miit.coursework.models.Doctors;
import rut.miit.coursework.services.DoctorsService;

@Controller
public class DoctorsController {
    private final DoctorsService doctorsService;

    @Autowired
    public DoctorsController(DoctorsService doctorsService) {
        this.doctorsService = doctorsService;
    }

    @GetMapping("/doctors")
    public String getAllDoctors(Model model) {
        model.addAttribute("doctors", doctorsService.getAllDoctors());
        return "doctors";
    }

    @GetMapping("/doctors/new")
    public String createDoctorsForm(Model model) {
        model.addAttribute("doctor", new Doctors());
        return "edit_doctors";
    }

    @PostMapping("/doctors/update")
    public String updateDoctors(@ModelAttribute Doctors doctor) {
        doctorsService.updateDoctor(doctor);
        return "redirect:/doctors";
    }

    @GetMapping("/doctors/edit/{id}")
    public String editDoctorsForm(@PathVariable Integer id, Model model) {
        Doctors doctor = doctorsService.getDoctor(id);
        model.addAttribute("doctor", doctor);
        return "edit_doctors";
    }

    @GetMapping("/doctors/delete/{id}")
    public String deleteDoctors(@PathVariable Integer id) {
        doctorsService.deleteDoctor(id);
        return "redirect:/doctors";
    }
}
