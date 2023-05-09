package com.example.my.module.user.repository;

import org.springframework.stereotype.Repository;

import com.example.my.module.user.entity.UserEntity;

@Repository
public interface UserRepository {
    UserEntity findById(String id);
}
