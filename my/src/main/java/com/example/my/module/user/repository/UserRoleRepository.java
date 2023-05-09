package com.example.my.module.user.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public class UserRoleRepository {

    List<UserRoleRepository> findByuserIdx(Integer userIdx);
    List<UserRoleRepository> findRoleByuserIdx(Integer userIdx);
    List<UserRoleRepository> findRoleByuserIdxAndRole(@Param("userIdx") Integer userIdx, @Param("role") String role);
    Integer insert(UserRoleEntity UserRoleEntity);
    
}
