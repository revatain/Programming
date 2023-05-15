package com.example.my.config.security;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;

public class CustomAuthFailureHandler extends SimpleUrlAuthenticationFailureHandler {

    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
            AuthenticationException exception) throws IOException, ServletException {
       String errorMessage;
       if(exception instanceof UsernameNotFoundException){
        errorMessage = exception.getMessage();
       } else {
            errorMessage = "알 수 없는 에러가 발생했습니다. 관리자에게 문의하세요.";
       }
       String encodedErrorMessage = URLEncoder.encode(errorMessage, StandardCharsets.UTF_8);
       setDefaultFailureUrl("/auth/login?error=true&message=" + encodedErrorMessage);
       super.onAuthenticationFailure(request, response, exception);
    }
    
}
