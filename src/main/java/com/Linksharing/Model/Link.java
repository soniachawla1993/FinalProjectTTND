package com.Linksharing.Model;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by dell on 7/20/2017.
 */
@Entity
@Inheritance(strategy= InheritanceType.JOINED)
public class Link extends Resource implements Serializable {


    String link;

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
