package com.springapp.mvc.service.impl;

import com.springapp.mvc.dao.UserDao;
import com.springapp.mvc.dao.impl.UserDaoImpl;
import com.springapp.mvc.model.User;
import com.springapp.mvc.service.UserService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by MegaComp on 10.03.14.
 */
public class UserServiceImpl implements UserService {
    private UserDao dao;

    public UserServiceImpl(UserDaoImpl userDao) {
        this.dao = userDao;
    }

    public void save(User user) {
        getDao().save(user);
    }

    public void update(User user) {
        getDao().update(user);

    }

    public User getById(Long id) {
        return getDao().getById(id);
    }

    public User getBySecondname(String login) {
        return getDao().getBySecondname(login);
    }

    public void deleteById(Long id) {
        getDao().deleteById(id);
    }

    public List<User> getUsers() {
        return getDao().getUsers();
    }

    public UserDao getDao() {
        return dao;
    }
}
