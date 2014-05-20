package com.springapp.mvc.controller;


import com.springapp.mvc.model.User;
import com.springapp.mvc.service.ServiceHolder;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.authority.GrantedAuthorityImpl;

import java.util.ArrayList;
import java.util.List;


/**
 * Created by MegaComp on 20.03.14.
 */

public class CustomAuthenticationManager implements AuthenticationManager {
    public Authentication authenticate(Authentication auth) throws AuthenticationException {
        User user = ServiceHolder.getUserService().getBySecondname(auth.getName());
        if (user == null) {
            throw new BadCredentialsException("User does not exists!");
        }
        String password = auth.getCredentials().toString();
        if (!user.getPassword().equals(password)) {
            throw new BadCredentialsException("Wrong password!");
        } else {
            List<GrantedAuthorityImpl> authorities = new ArrayList<GrantedAuthorityImpl>();
            authorities.add(new GrantedAuthorityImpl(user.getRoles()));
            return new UsernamePasswordAuthenticationToken(
                    auth.getName(),
                    auth.getCredentials(),
                    authorities);
        }
    }
}
