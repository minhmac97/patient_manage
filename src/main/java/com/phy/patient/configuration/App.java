package com.phy.patient.configuration;

import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App {
    public static void main( String[] args )
    {
        ConfigurableApplicationContext context =
                new ClassPathXmlApplicationContext(new String[] {"spring-servlet.xml"});
        context.close();
    }
}
