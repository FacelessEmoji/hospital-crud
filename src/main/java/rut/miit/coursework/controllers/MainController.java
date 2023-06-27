package rut.miit.coursework.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import rut.miit.coursework.services.MainService;
import java.util.List;

@Controller
public class MainController {

    private final MainService mainService;

    // Dependency Injection
    @Autowired
    public MainController(MainService mainService) {
        this.mainService = mainService;
    }

    @GetMapping("/specializations")
    public String getSpecializationsByHospitalId(Model model, @RequestParam Long hospitalId) {
        List<String> specializations = mainService.getSpecializationsByHospitalId(hospitalId);
        model.addAttribute("specializations", specializations);
        return "specializations";
    }

    @GetMapping("/contactPhones")
    public String getPhoneByInsuranceNumber(Model model, @RequestParam String insuranceNumber) {
        List<String> phones = mainService.getPhoneByInsuranceNumber(insuranceNumber);
        model.addAttribute("phones", phones);
        return "contactPhones";
    }

    @GetMapping("/formnames")
    public String getFormNamesByPrescriptionId(Model model, @RequestParam Long prescriptionId) {
        List<String> formNames = mainService.getFormNamesByPrescriptionId(prescriptionId);
        model.addAttribute("formNames", formNames);
        return "formnames";
    }

    @GetMapping("/patients-doctors")
    public String getPatientsAndDoctorsByDiagnosis(Model model, @RequestParam String diagnosisName) {
        List<Object[]> patientsDoctorsData = mainService.getPatientsAndDoctorsByDiagnosis(diagnosisName);
        model.addAttribute("patientsDoctorsData", patientsDoctorsData);
        return "patients-doctors";
    }

    @GetMapping("/medicines")
    public String getMedicines(Model model, @RequestParam String hospitalName, @RequestParam String specializationName, @RequestParam Double salary, @RequestParam String diagnosisName) {
        List<String> medicines = mainService.getMedicines(hospitalName, specializationName, salary, diagnosisName);
        model.addAttribute("medicines", medicines);
        return "medicines";
    }

    @GetMapping("/main")
    public String mainPage() {
        return "main";
    }

}

