package com.example.my;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordEncoderTest {
    @Test
    public void test1() {
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();

        // 회원 가입
        String pw = "123";
        String encodeStr = bCryptPasswordEncoder.encode(pw);

        // 회원 가입 끝

        // login
        String newPw = "123";
        boolean result = bCryptPasswordEncoder.matches(newPw, encodeStr);

        Assertions.assertThat(result).isTrue();
    }
    
}
