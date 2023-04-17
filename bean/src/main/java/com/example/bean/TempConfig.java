package com.example.bean;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.fasterxml.jackson.databind.ObjectMapper;

@Configuration
public class TempConfig {
    @Bean
    public ObjectMapper objectMapper(){
        // 객체를 JSON으로 JSON을 객체로 만듬.
        return new ObjectMapper();
    }
}
