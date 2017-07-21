package com.Linksharing.Beans;

import com.Linksharing.Model.Resource;
import com.Linksharing.Model.Subscription;
import com.Linksharing.Model.User;
import com.Linksharing.Model.Visibility;
import org.springframework.stereotype.Component;
import com.Linksharing.Model.Resource;
import javax.persistence.*;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
@Component
public class TopicBean {

    int id;
    Collection<Resource> resources=new HashSet<Resource>();
    Collection<Subscription> subscriptions=new HashSet<Subscription>();
    User user;
    Visibility visibility;
    String name;
    Date datecreated;
    Date lastupdated;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public Visibility getVisibility() {
        return visibility;
    }

    public void setVisibility(Visibility visibility) {
        this.visibility = visibility;
    }

    public String getName() {
        return name;
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