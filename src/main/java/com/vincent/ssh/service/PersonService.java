package com.vincent.ssh.service;

import java.util.List;

import com.vincent.ssh.entity.Person;

/**
 *
 */
public interface PersonService {
    List<Person> getPersons();

    Person getPersonById(String id);

    void addPerson(Person person);

    void updatePerson(Person person);

    void deletePersonById(String id);
}
