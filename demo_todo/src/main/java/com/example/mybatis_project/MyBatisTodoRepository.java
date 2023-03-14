package com.example.mybatis_project;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface MyBatisTodoRepository {

    List<TodoEntity> findAll();

    List<TodoEntity> findAllByDoneYn(String doneYn);

    TodoEntity findByIdx(Integer idx);

    Integer insert(TodoEntity todoEntity);

    Integer update(TodoEntity todoEntity);

}
