package rut.miit.coursework.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rut.miit.coursework.models.Contacts;
import rut.miit.coursework.repositories.ContactsRepository;

import java.util.ArrayList;
import java.util.List;

@Service
public class ContactsService {
    private final ContactsRepository contactsRepository;

    @Autowired
    public ContactsService(ContactsRepository contactsRepository) {
        this.contactsRepository = contactsRepository;
    }

    public List<Contacts> getAllContacts() {
        List<Contacts> contacts = new ArrayList<>();
        contactsRepository.findAll().forEach(contacts::add);
        return contacts;
    }

    public Contacts getContact(Integer id) {
        return contactsRepository.findById(id).orElse(null);
    }

    public void addContact(Contacts contact) {
        contactsRepository.save(contact);
    }

    public void updateContact(Contacts contact) {
        contactsRepository.save(contact);
    }

    public void deleteContact(Integer id) {
        contactsRepository.deleteById(id);
    }
}

