package com.springapp.mvc.model;

/**
 * Created by MegaComp on 10.03.14.
 */
public class User {
    private Long id;
    private String name;
    private String secondName;
    private String password;
    private String email;
    private String roles;
    private Integer score;


    public User() {
    }

    public User(String name, String secondName, String password, String email, String roles, Integer score) {
        this.name = name;
        this.secondName = secondName;
        this.password = password;
        this.email = email;
        this.roles = roles;
        this.score = score;

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRoles() {
        return roles;
    }

    public void setRoles(String roles) {
        this.roles = roles;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }
}
