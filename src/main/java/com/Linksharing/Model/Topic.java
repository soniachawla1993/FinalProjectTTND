package com.Linksharing.Model;

import org.springframework.cglib.core.GeneratorStrategy;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;


@Entity
@Table(name="topic")
public class Topic implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name="id")
    public int id;
    @OneToMany
    @JoinTable
    Collection<Resource> resources=new HashSet<Resource>();
    @OneToMany
    @JoinTable
    Collection<Subscription> subscriptions=new HashSet<Subscription>();
    @ManyToOne(targetEntity=User.class)
    User user;
    @Column(name = "visiblity")
    @Enumerated(EnumType.STRING)
    public Visibility visibility;
    @Id
    @Column(name = "name", nullable = false, unique = true)
    String name;

    @Column(name = "datecreated")
    Date datecreated;

    @Column(name = "lastupdated")
    Date lastupdated;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Visibility getVisibility() {
        return visibility;
    }

    public void setVisibility(Visibility visibility) {
        this.visibility = visibility;
    }

    public String getName() {
        return name;
    }

    public Collection<Resource> getResources() {
        return resources;
    }

    public void setResources(Collection<Resource> resources) {
        this.resources = resources;
    }

    public Collection<Subscription> getSubscriptions() {
        return subscriptions;
    }

    public void setSubscriptions(Collection<Subscription> subscriptions) {
        this.subscriptions = subscriptions;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDatecreated() {
        return datecreated;
    }

    public void setDatecreated(Date datecreated) {
        this.datecreated = datecreated;
    }

    public Date getLastupdated() {
        return lastupdated;
    }

    public void setLastupdated(Date lastupdated) {
        this.lastupdated = lastupdated;
    }



    }
