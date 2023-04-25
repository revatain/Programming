package com.example.my.todo.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.my.todo.dto.TodoDTO;
import com.example.my.todo.entity.TodoEntity;
import com.example.my.todo.service.TodoService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class TodoController {

    private final TodoService todoService;


    // @GetMapping("/")
    // @ResponseBody
    // public TodoEntity hello(@RequestParam(name = "idx", defaultValue = "1") Integer idx) {
    //     return todoService.findByIdx(idx);
    // }

    @GetMapping("/")
    @ResponseBody
    public TodoEntity hello(TodoDTO.ReqHello reqDto) {
        System.out.println(reqDto);
        return null;
        // return todoService.findByIdx(idx);
    }
    @GetMapping("/todoList")
    public String todoList() {
        return "todoList";
    }

}
