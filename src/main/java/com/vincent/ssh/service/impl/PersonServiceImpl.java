package com.vincent.ssh.service.impl;

import com.vincent.ssh.dao.impl.PersonDaoImpl;
import com.vincent.ssh.entity.Person;
import com.vincent.ssh.service.PersonService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * PersonServiceImpl
 */
@Service
public class PersonServiceImpl implements PersonService {
    @Autowired
    private PersonDaoImpl personDao;

    public List<Person> getPersons() {
        return personDao.getPersons();
    }

    public Person getPersonById(String id) {
        return personDao.getPersonById(id);
    }

    public void addPerson(Person person) {
        personDao.addPerson(person);
    }

    public void updatePerson(Person person) {
        personDao.updatePerson(person);
    }

    public void deletePersonById(String id) {
        personDao.deletePersonById(id);
    }
}
