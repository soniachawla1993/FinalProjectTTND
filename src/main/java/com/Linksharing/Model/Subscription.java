package com.Linksharing.Model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name="subscription")
public class Subscription implements Serializable {
    @Id
    @ManyToOne
    User user;
    @Id
    @ManyToOne
    Topic topic;
    @Column(name = "seriousness")
    @Enumerated(EnumType.STRING)
    public Seriousness seriousness;
    @Column(name="datecreated")
    Date datecreated;
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Topic getTopic() {
        return topic;
    }

    public void setTopic(Topic topic) {
        this.topic = topic;
    }

    public Seriousness getSeriousness() {
        return seriousness;
    }

    public void setSeriousness(Seriousness seriousness) {
        this.seriousness = seriousness;
    }

    public Date getDatecreated() {
        return datecreated;
    }

    public void setDatecreated(Date datecreated) {
        this.datecreated = datecreated;
    }
}
