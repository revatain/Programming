package com.example.my.todo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TodoController {
    @GetMapping("/todoList")
    public String todoList(){
        return"todoList";
    }
}
