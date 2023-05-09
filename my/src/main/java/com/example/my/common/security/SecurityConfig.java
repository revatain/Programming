package com.example.my.common.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {
    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.authorizeHttpRequests(config -> config.anyRequest().authenticated());
        // 로그인 성공 시 이동 페이지
        http.formLogin(config -> config.defaultSuccessUrl("/todoList", true));
        return http.build();
        
    }
}
