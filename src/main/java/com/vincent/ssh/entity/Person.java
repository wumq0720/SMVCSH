package com.vincent.ssh.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * person实体
 */
@Entity
@Table(name = "person")
public class Person {
    private String id;

    private String name;

    private String idCard;

    private String phone;

    private String address;

    //自动生成UUID
    @Id
    @Column(name = "id", nullable = false, length = 32, unique = true)
    @GenericGenerator(name = "generator", strategy = "uuid.hex")
    @GeneratedValue(generator = "generator")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name", length = 99)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "idCard", length = 99)
    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    @Basic
    @Column(name = "phone", length = 99)
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "address", length = 99)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
