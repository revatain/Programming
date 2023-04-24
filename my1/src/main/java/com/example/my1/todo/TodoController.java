package com.example.my1.todo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class TodoController {

    private final TodoRepository todoRepository;

    @GetMapping("/")
    @ResponseBody
    public String hello(){
        return todoRepository.hello();
    }

    @GetMapping("/todoList")
    public String todoList(){
        return "todoList";
    }
}
