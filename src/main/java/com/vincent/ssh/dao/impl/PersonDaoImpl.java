package com.vincent.ssh.dao.impl;

import com.vincent.ssh.common.dao.impl.BaseDaoImpl;
import com.vincent.ssh.dao.PersonDao;
import com.vincent.ssh.entity.Person;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 员工dao
 */
@Repository
public class PersonDaoImpl extends BaseDaoImpl implements PersonDao {
    public List<Person> getPersons() {
        return (List<Person>) currentSession().createCriteria(Person.class).list();
    }

    public Person getPersonById(String id) {

        String hql = "from Person p where p.id=?";
        Query query = currentSession().createQuery(hql);
        query.setString(0, id);
        return (Person) query.uniqueResult();
    }

    public void addPerson(Person person) {
        currentSession().save(person);
    }

    public void updatePerson(Person person) {
        currentSession().update(person);
    }

    public void deletePersonById(String id) {
        String hql = "delete Person p where p.id=?";
        Query query = currentSession().createQuery(hql);
        query.setString(0, id);
        query.executeUpdate();

    }
}
