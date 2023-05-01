package com.example.my.todo.controller;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.my.common.ResDTO;
import com.example.my.todo.service.TodoServiceApiV2;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v2/todo")
public class TodoControllerApiV2 {
    
    private final TodoServiceApiV2 todoServiceAp1V2;
    @GetMapping
    public ResDTO<?> select() {
        return todoServiceAp1V2.findByDeleteYn('N');
    }

    @PostMapping
    public ResDTO<?> insert(@RequestParam String content) {
       return todoServiceAp1V2.insert(content);
    }

    @PutMapping("/{idx}")
    public ResDTO<?> update(@PathVariable Integer idx) {
       return todoServiceAp1V2.update(idx);
    }

    @DeleteMapping("/{idx}")
    public ResDTO<?> delete(@PathVariable Integer idx) {
        return todoServiceAp1V2.delete(idx);
    }
}
