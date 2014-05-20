package com.springapp.mvc.controller;

import com.springapp.mvc.model.User;
import com.springapp.mvc.service.ServiceHolder;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;


@Controller
public class HelloController {

    @RequestMapping(value = "/")
    public String base() {
        return "redirect:/game.htm";
    }

    @RequestMapping(value = "/logout")
    public String logoutgame() {
        return "redirect:/game.htm";
    }

    @RequestMapping(value = "/game.htm")
    public String pageHome() {
        return "home";
    }

    @RequestMapping(value = "/registration.htm")
    public String pageRegiste() {
        return "registration";
    }

    @RequestMapping(value = "/registration/save.htm", method = RequestMethod.GET)
    public String compare(HttpServletRequest request, HttpServletResponse response, Model model,
                          @RequestParam("firstname") String firstname,
                          @RequestParam("secondName") String secondName,
                          @RequestParam("password") String password,
                          @RequestParam("email") String email) {


        User user = ServiceHolder.getUserService().getBySecondname(secondName);
        if ((user == null) & (firstname != "") & (secondName != "") & (password != "") & (email != " ")) {
            ServiceHolder.getUserService().save(new User(firstname, secondName, password, email, "ROLE_USER", 0));
            return "redirect:/login.htm";
        }


        if (firstname == "") {
            model.addAttribute("exeptionname", "Empty");
        } else {
            model.addAttribute("valuename", firstname);
        }

        if (secondName == "") {
            model.addAttribute("exeptionlogin", "Empty");
        } else {
            if (user == null) {
                model.addAttribute("valuelogin", secondName);
            }
        }

        if (password == "") {
            model.addAttribute("exeptionpassword", "Empty");
        } else {
            model.addAttribute("valuepassword", password);
        }

        if (email == "") {
            model.addAttribute("exeptionemail", "Empty");
        } else {
            model.addAttribute("valueemail", email);
        }

        if (user != null) {
            model.addAttribute("exeptionlogin", "This login used.");
        }
        return "/registration";

    }

    @RequestMapping(value = "/listscore")
    public String pageListscore(ModelMap model) {

        List<User> users = ServiceHolder.getUserService().getUsers();
        model.addAttribute("people", users);
        return "listscore";
    }

    @RequestMapping(value = "/list")
    public String pageList(ModelMap model) {

        List<User> users = ServiceHolder.getUserService().getUsers();
        model.addAttribute("people", users);
        return "list";
    }

    @RequestMapping(value = "list/delete/{id}")
    public String deleteUser(Model model, @PathVariable Long id) {

        ServiceHolder.getUserService().deleteById(id);
        List<User> users = ServiceHolder.getUserService().getUsers();
        model.addAttribute("people", users);
        return "list";

    }

    @RequestMapping(value = "list/edit/{id}")
    public String updateUser(Model model, @PathVariable Long id) {
        model.addAttribute("user", ServiceHolder.getUserService().getById(id));
        return "edituser";

    }

    @RequestMapping(value = "list/save")
    public String updateUser(User user) {
        user.setRoles("ROLE_USER");
        ServiceHolder.getUserService().update(user);
        return "redirect:/list";

    }

    @RequestMapping(value = "login.htm")
    public String loginhtm() {
        return "login";

    }

    @RequestMapping(value = "/denied", method = RequestMethod.GET)
    public String getDeniedPage() {

        // This will resolve to /WEB-INF/jsp/deniedpage.jsp
        return "home";

    }

    @RequestMapping(value = "/contact.htm")
    public String game() {
        return "contact";

    }

    @RequestMapping(value = "/game/save")
    public String gamesave(HttpServletRequest request) {

        Integer score = Integer.parseInt(request.getParameter("score"));
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String name = authentication.getName();
        User user = ServiceHolder.getUserService().getBySecondname(name);
        user.setScore(score);
        ServiceHolder.getUserService().update(user);
        return "contact";

    }

    @RequestMapping(value = "/game/load", method = RequestMethod.GET)
    @ResponseBody
    public String gameload() {
        String score = "0";
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        User user = ServiceHolder.getUserService().getBySecondname(authentication.getName());
        score = String.valueOf(user.getScore());
        return score;

    }
}