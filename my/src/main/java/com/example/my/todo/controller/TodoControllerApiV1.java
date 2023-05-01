package com.example.my.todo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.my.todo.service.TodoServiceApiV1;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class TodoControllerApiV1 {
    
    private final TodoServiceApiV1 todoServiceAp1V1;

    @GetMapping("/api/v1/insert")
    public void insert(@RequestParam String content) {
        todoServiceAp1V1.insert(content);
    }

    @GetMapping("/api/v1/update")
    public void update(@RequestParam Integer idx) {
        todoServiceAp1V1.update(idx);
    }

    @GetMapping("/api/v1/delete")
    public void delete(@RequestParam Integer idx) {
        todoServiceAp1V1.delete(idx);
    }
}
