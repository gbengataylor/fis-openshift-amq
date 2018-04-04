package ssa;


import org.apache.camel.Body;
public class MyBean {

    public String sayHello(@Body String content) {
        return "Hello " + content;
    }
}