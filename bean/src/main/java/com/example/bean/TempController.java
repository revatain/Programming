package com.example.bean;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class TempController {
   
    private Robot robot;
    




    public TempController(Robot robot) {
        this.robot = robot;
    }





    @GetMapping
    @ResponseBody
    public String temp() throws JsonProcessingException{
        System.out.println(robot.toString());
        return "안녕하세요";
    }
}
