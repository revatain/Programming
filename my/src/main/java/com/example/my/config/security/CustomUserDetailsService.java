package com.example.my.config.security;

import java.util.List;

import org.springframework.context.annotation.Primary;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.my.module.user.entity.UserEntity;
import com.example.my.module.user.entity.UserRoleEntity;
import com.example.my.module.user.repository.UserRepository;
import com.example.my.module.user.repository.UserRoleRepository;

import lombok.RequiredArgsConstructor;

@Service
@Primary
@RequiredArgsConstructor
public class CustomUserDetailsService implements UserDetailsService {
    private final UserRepository userRepository;
    private final UserRoleRepository userRoleRepository;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserEntity userEntity = userRepository.findById(username);
        if (userEntity == null){
            throw new UsernameNotFoundException("아이디를 정확히 입력해주세요.");
        }
        List<UserRoleEntity> userRoleEntityList = userRoleRepository.findByUserIdx(userEntity.getIdx());
        // if(userRoleEntityList.size() < 1) {
        //     throw new AuthenticationCredentialsNotFoundException("권한이 없습니다.");
        // }
        return new CustomUserDetails(userEntity, userRoleEntityList);
    }
    
}
