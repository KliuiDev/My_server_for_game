//package com.springapp.mvc;
//
//import com.springapp.mvc.model.User;
//import com.springapp.mvc.service.UserService;
//import org.springframework.context.ApplicationContext;
//import org.springframework.context.support.ClassPathXmlApplicationContext;
//
///**
// * Created by MegaComp on 10.03.14.
// */
//public class App {
//    public static void main (String[] arg){
//
//        ApplicationContext appContext =
//                new ClassPathXmlApplicationContext("WEB-INF/spring/context.xml");
//
//        UserService serv = (UserService) appContext.getBean("userService");
//        User user = new User();
//        user.setName("22");
//        user.setSecondName("55 ");
//
//        serv.save(user);
//
//    }
//}
