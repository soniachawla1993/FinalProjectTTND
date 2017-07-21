package com.Linksharing.Model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;

/**
 * Created by dell on 7/20/2017.
 */
@Entity

public abstract class Resource implements Serializable {
    @Id@GeneratedValue(strategy =GenerationType.SEQUENCE )
    int resourceid;

    public int getResourceid() {
        return resourceid;
    }

    public void setResourceid(int resourceid) {
        this.resourceid = resourceid;
    }

    @OneToMany
    @JoinTable
    Collection<ResourceRating> resourceRatings=new HashSet<ResourceRating>();
    @ManyToOne
            Topic topic;
    @ManyToOne
            User user;
    String description;

    public Topic getTopic() {
        return topic;
    }

    public Collection<ResourceRating> getResourceRatings() {
        return resourceRatings;
    }

    public void setResourceRatings(Collection<ResourceRating> resourceRatings) {
        this.resourceRatings = resourceRatings;
    }

    public void setTopic(Topic topic) {
        this.topic = topic;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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

    Date datecreated;
    Date lastupdated;

}
