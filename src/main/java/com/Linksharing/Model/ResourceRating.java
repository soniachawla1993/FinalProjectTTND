package com.Linksharing.Model;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by dell on 7/20/2017.
 */
@Entity
public class ResourceRating implements Serializable{
    @OneToOne
    @JoinColumn
            @Id
    User user;
    @ManyToOne
            @Id
    Resource resource;

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
}
