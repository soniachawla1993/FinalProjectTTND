package com.Linksharing.Model;

/**
 * Created by dell on 7/18/2017.
 */
public enum Visibility {
    PUBLIC("public"),PRIVATE("private");
    String displayName;

    Visibility(String displayName) {
        this.displayName = displayName;
    }
}
