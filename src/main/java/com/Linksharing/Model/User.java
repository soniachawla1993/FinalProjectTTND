package com.Linksharing.Model;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Blob;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;

/**
 * Created by dell on 7/14/2017.
 */
@Entity
@Table(name="user")
public class User implements Serializable {
    @OneToMany
    @JoinTable
    Collection<Resource> resources=new HashSet<Resource>();
    @OneToMany
    @JoinTable
    Collection<Subscription> subscriptions=new HashSet<Subscription>();
    @OneToMany
    @JoinTable
    Collection<Topic> topics= new HashSet<Topic>();
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="userid")
    public int id;

    @Column(name = "email")
    public String email;

    @Column(name="username")
    public String username;

    @Column(name="password")
    public String password;

    @Column(name="firstname")
    public String firstname;

    @Column(name="lastname")
    public String lastname;

    @Column(name="photo", length=100000)
    @Lob @Basic(fetch = FetchType.LAZY)
    public byte[] photo;

    @Column(name="admin")
    public boolean admin;

    @Column(name="active")
    public boolean active;

    @Column(name="datecreated")
    public Date datecreated;

    @Column(name="lastupdated")
    public Date lastupdated;
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
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

    public Collection<Topic> getTopics() {
        return topics;
    }

    public void setTopics(Collection<Topic> topics) {
        this.topics = topics;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public byte[] getPhoto() {
        return photo;
    }

    public void setPhoto(byte[] photo) {
        this.photo = photo;
    }

    public User() {
    }

    public boolean isAdmin() {
        return admin;
    }

    public void setAdmin(boolean admin) {
        this.admin = admin;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
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

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", firstname='" + firstname + '\'' +
                ", lastname='" + lastname + '\'' +
                ", admin=" + admin +
                ", active=" + active +
                ", datecreated=" + datecreated +
                ", lastupdated=" + lastupdated +
                '}';
    }

    public void setLastupdated(Date lastupdated) {
        this.lastupdated = lastupdated;
    }


}
