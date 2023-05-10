package com.example.my.module.user.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

public class AutoDTO {
    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class ReqJoin() {
        @NotBlank(message = "아이디를 입력해주세요")
        @Size(min =3, message = "아이디는 3자이상 입력해주세요.")
        private String id;
        @NotBlank(message = "비밀번호를 입력해주세요")
        @Size(min =3, message = "비밀번호는 3자이상 입력해주세요.")
        private String pw;
        
    }
}

