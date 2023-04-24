package com.example.my.todo;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface TodoRepository {
    
    String hello();
}
