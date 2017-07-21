package com.Linksharing.Model;

import javax.persistence.Entity;
import java.io.Serializable;

/**
 * Created by dell on 7/20/2017.
 */
@Entity
public class Document extends Resource implements Serializable {
    byte[] resource;

    public byte[] getResource() {
        return resource;
    }

    public void setResource(byte[] resource) {
        this.resource = resource;
    }
}
