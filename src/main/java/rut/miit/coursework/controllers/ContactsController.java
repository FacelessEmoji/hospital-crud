package rut.miit.coursework.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import rut.miit.coursework.models.Contacts;
import rut.miit.coursework.services.ContactsService;

@Controller
public class ContactsController {
    private final ContactsService contactsService;

    @Autowired
    public ContactsController(ContactsService contactsService) {
        this.contactsService = contactsService;
    }

    @GetMapping("/contacts")
    public String getAllContacts(Model model) {
        model.addAttribute("contacts", contactsService.getAllContacts());
        return "contacts";
    }

    @GetMapping("/contacts/new")
    public String createContactForm(Model model) {
        model.addAttribute("contact", new Contacts());
        return "edit_contacts";
    }

    @PostMapping("/contacts/update")
    public String updateContact(@ModelAttribute Contacts contact) {
        contactsService.updateContact(contact);
        return "redirect:/contacts";
    }

    @GetMapping("/contacts/edit/{id}")
    public String editContactForm(@PathVariable Integer id, Model model) {
        Contacts contact = contactsService.getContact(id);
        model.addAttribute("contact", contact);
        return "edit_contacts";
    }

    @GetMapping("/contacts/delete/{id}")
    public String deleteContact(@PathVariable Integer id) {
        contactsService.deleteContact(id);
        return "redirect:/contacts";
    }
}