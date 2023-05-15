package com.example.my.config.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        
        http.csrf().disable();

        http.authorizeHttpRequests(config -> {
            try {
                config
                        .antMatchers("/h2/**")
                        .permitAll()
                        .and()
                        .headers().frameOptions().sameOrigin();
            } catch (Exception e) {
                e.printStackTrace();
            }
        });

        // 인가 Authorization (인증 Authentication + 권한 Authority)
        http.authorizeHttpRequests(config -> config
                // 패턴에 해당하는 주소는 허용
                .antMatchers("/auth/login", "/auth/join", "/api/*/auth/**")
                .permitAll()
                .antMatchers("/todoList")
                .hasRole("USER")
                // 모든 페이지를 인증하게 만듬
                .anyRequest()
                .authenticated()
                );

        // formLogin과 관련된 내용
        http.formLogin(config -> config
                // 우리가 직접 만든 로그인 페이지를 사용한다.
                .loginPage("/auth/login")
                // loginProc
                // 로그인 폼, 액션에 넣어주면 작동함
                .loginProcessingUrl("/login-process")
                // 흔히 말하는 로그인 아이디를 유저네임이라 한다.
                // 해당 파라미터를 커스텀 할 수 있다.
                .usernameParameter("id")
                // 비밀번호도 마찬가지.
                .passwordParameter("pw")
                .failureHandler(new CustomAuthFailureHandler())
                // 로그인 성공 시 이동 페이지
                // 두번째 매개변수는 로그인 성공 시 항상 세팅 페이지로 이동하게 함
                .defaultSuccessUrl("/todoList", true));

        return http.build();
    }

}
