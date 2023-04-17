package com.example.bean;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class TempController {
   
    private final TempComponent tempComponent;
    private final ObjectMapper objectMapper;
    


    public TempController(TempComponent tempComponent, ObjectMapper objectMapper) {
        this.tempComponent = tempComponent;
        this.objectMapper = objectMapper;
    }



    @GetMapping
    @ResponseBody
    public String temp() throws JsonProcessingException{
        tempComponent.print();
        String writeValueAsString = objectMapper.writeValueAsString(new ArrayList<>());
        System.out.println(writeValueAsString);
        return "안녕하세요";
    }
}
