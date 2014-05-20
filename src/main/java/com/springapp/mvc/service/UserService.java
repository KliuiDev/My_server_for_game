package com.springapp.mvc.service;

import com.springapp.mvc.model.User;

import java.util.List;

/**
 * Created by MegaComp on 10.03.14.
 */
public interface UserService {

    public void save(User user);

    public void update(User user);

    public void deleteById(Long id);

    public User getById(Long id);

    public User getBySecondname(String login);

    public List<User> getUsers();

}
