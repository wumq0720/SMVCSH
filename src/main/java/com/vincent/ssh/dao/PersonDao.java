package com.vincent.ssh.dao;

import java.util.List;

import com.vincent.ssh.entity.Person;

/**
 * 
 */
public interface PersonDao {
    public List<Person> getPersons();

    public Person getPersonById(String id);

    public void addPerson(Person person);

    public void updatePerson(Person person);

    public void deletePersonById(String id);
}
