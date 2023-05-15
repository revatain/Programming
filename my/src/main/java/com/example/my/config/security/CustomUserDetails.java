package com.example.my.config.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.example.my.module.user.entity.UserEntity;
import com.example.my.module.user.entity.UserRoleEntity;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
@Getter
@RequiredArgsConstructor
public class CustomUserDetails implements UserDetails{
    private final UserEntity userEntity;
    private final List<UserRoleEntity> userRoleEntityList;
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Collection<GrantedAuthority> grantedAuthorityList = new ArrayList<>();
        for (GrantedAuthority grantedAuthority : userRoleEntityList) {
            grantedAuthorityList.add(new GrantedAuthority() {

                @Override
                public String getAuthority() {
                   return "ROLE_" + userRoleEntity.getRole();
                }             
            });
        }
    }

    @Override
    public String getPassword() {
       return userEntity.getPw();
    }

    @Override
    public String getUsername() {
        return userEntity.getId();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
    
}
