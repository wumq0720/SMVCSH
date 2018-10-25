package com.vincent.ssh.common.dao;

import org.hibernate.Session;

/**
 * 获取session的DAO
 */
public interface BaseDao {
    Session currentSession();

    public Session openSession();
}
