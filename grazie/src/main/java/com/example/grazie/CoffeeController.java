package com.example.grazie;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
// 카운터 직원
@RestController
@RequiredArgsConstructor
public class CoffeeController {
    private final CoffeeService coffeeService;
    @GetMapping("/아메리카노")
    public Coffee 아메리카노(){
        return coffeeService.아메리카노();
    }
    @GetMapping("/카푸치노")
    public Coffee 카푸치노(){
        return coffeeService.카푸치노();
    }
    @GetMapping("/아샷추")
    public Coffee 아샷추(){
        return coffeeService.아샷추();
    }
}
