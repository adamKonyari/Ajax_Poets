package com.codecool.web.model;

public class Poet extends AbstractModel{

    private String forename;
    private String lastName;
    private String username;
    private String password;

    public Poet(int id, String forename, String lastName, String username, String password) {
        super(id);
        this.forename = forename;
        this.lastName = lastName;
        this.username = username;
        this.password = password;
    }

    public String getForename() {
        return forename;
    }

    public String getLastName() {
        return lastName;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }
}
