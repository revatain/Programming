package com.example.my.module.user.controller;

import org.springframework.http.HttpEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/auth")
public class AuthControllerApiV1 {
    @PostMapping("/join")
    public HttpEntity<?> joinProc(@Validated @RequestBody AuthDTO.ReqJoin reqDto) {
        return null;
        
    }
    
}
