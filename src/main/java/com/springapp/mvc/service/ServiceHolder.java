package com.springapp.mvc.service;

/**
 * Created by MegaComp on 28.03.14.
 */
public class ServiceHolder {

    private static ServiceHolder instance;

    private final UserService userService; // index 0

    ServiceHolder(UserService userService) {
        this.userService = userService;
        this.instance = this;
    }

    public static UserService getUserService() {
        return instance.userService;
    }
}
