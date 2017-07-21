package com.Linksharing.Beans;

import com.Linksharing.Model.Resource;
import org.springframework.stereotype.Component;

import java.io.Serializable;

/**
 * Created by dell on 7/21/2017.
 */
@Component
public class LinkShareBean extends Resource {
    int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    String link;

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}

