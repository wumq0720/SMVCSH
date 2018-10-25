package com.vincent.ssh.common.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.vincent.ssh.common.dao.BaseDao;

import javax.annotation.Resource;

/**
 * session
 */
public class BaseDaoImpl implements BaseDao {
    @Resource
    private SessionFactory sessionFactory;
    private Session session;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public Session currentSession() {
        session = sessionFactory.getCurrentSession();
        return session;
    }

    @Override
    public Session openSession() {
        session = sessionFactory.openSession();
        return session;
    }
}
