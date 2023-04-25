package com.example.my.todo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.my.todo.repository.TodoRepository;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class TodoController {

    private final TodoRepository todoRepository;

    @GetMapping("/")
    @ResponseBody
    public String hello() {
        return todoRepository.findByIdx(1).toString();
    }

    @GetMapping("/todoList")
    public String todoList() {
        return "todoList";
    }

}
