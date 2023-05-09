package com.example.my.common.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {
    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        // 인가 Authorization (인증 Authentication + 권한 Authority)
        // anyRequest 모든 페이지를 인증하게 만듬.
        http.authorizeHttpRequests(config -> config.antMatchers("/auth/login", "/auth/join", "/api/*/auth/**").permitAll().anyRequest().authenticated());
        // 로그인 성공 시 이동 페이지 (formLogin과 관련 있음.)
        http.formLogin(config -> config.loginPage("/auth/login").defaultSuccessUrl("/todoList", true));
        return http.build();
        
    }
}
