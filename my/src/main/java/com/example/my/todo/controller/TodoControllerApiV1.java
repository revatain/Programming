package com.example.my.todo.controller;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.my.todo.service.TodoServiceApiV1;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/todo")
public class TodoControllerApiV1 {
    
    private final TodoServiceApiV1 todoServiceAp1V1;

    @PostMapping
    public void insert(@RequestParam String content) {
        todoServiceAp1V1.insert(content);
    }

    @PutMapping
    public void update(@RequestParam Integer idx) {
        todoServiceAp1V1.update(idx);
    }

    @DeleteMapping
    public void delete(@RequestParam Integer idx) {
        todoServiceAp1V1.delete(idx);
    }
}
