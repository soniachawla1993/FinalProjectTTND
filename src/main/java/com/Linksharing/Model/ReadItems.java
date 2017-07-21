package com.Linksharing.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import java.io.Serializable;

/**
 * Created by dell on 7/20/2017.
 */
@Entity
public class ReadItems implements Serializable {
    @OneToOne
    @JoinColumn
            @Id
    User user;
    @OneToOne
    @JoinColumn
            @Id
    Resource resource;
    boolean isread;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Resource getResource() {
        return resource;
    }

    public void setResource(Resource resource) {
        this.resource = resource;
    }

    public boolean isIsread() {
        return isread;
    }

    public void setIsread(boolean isread) {
        this.isread = isread;
    }
}
