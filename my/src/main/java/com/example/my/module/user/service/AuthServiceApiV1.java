package com.example.my.module.user.service;

import org.springframework.http.HttpEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class AuthServiceApiV1 {
    public HttpEntity<?> joinProc(AuthDTO.ReqJoin reqDto){
        return null;
        
    }
}
