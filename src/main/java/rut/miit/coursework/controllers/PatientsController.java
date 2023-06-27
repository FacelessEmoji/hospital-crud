package rut.miit.coursework.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import rut.miit.coursework.models.Patients;
import rut.miit.coursework.services.PatientsService;

@Controller
public class PatientsController {
    private final PatientsService patientsService;

    @Autowired
    public PatientsController(PatientsService patientsService) {
        this.patientsService = patientsService;
    }

    @GetMapping("/patients")
    public String getAllPatients(Model model) {
        model.addAttribute("patients", patientsService.getAllPatients());
        return "patients";
    }

    @GetMapping("/patients/new")
    public String createPatientsForm(Model model) {
        model.addAttribute("patient", new Patients());
        return "edit_patients";
    }

    @PostMapping("/patients/update")
    public String updatePatients(@ModelAttribute Patients patient) {
        patientsService.updatePatient(patient);
        return "redirect:/patients";
    }

    @GetMapping("/patients/edit/{id}")
    public String editPatientsForm(@PathVariable Integer id, Model model) {
        Patients patient = patientsService.getPatient(id);
        model.addAttribute("patient", patient);
        return "edit_patients";
    }

    @GetMapping("/patients/delete/{id}")
    public String deletePatients(@PathVariable Integer id) {
        patientsService.deletePatient(id);
        return "redirect:/patients";
    }
}
