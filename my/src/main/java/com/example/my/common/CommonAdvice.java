package com.example.my.common;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
@Aspect
public class CommonAdvice {
    // @Before("execution(public * com.example.my..controller..*(..))")
    // public void tempAdvice() {
    //     log.warn("요청이 들어왔습니다.");
    // }
    @Around("execution(* com.example.my.todo.repository..findByIdx(..))")
    public Object checkFindByIdx(ProceedingJoinPoint proceedingJoinPoint) throws Throwable{
        Object result = proceedingJoinPoint.proceed(proceedingJoinPoint.getArgs());
        if (result == null) {
            throw new EntityNotFoundException();
        }
        return result;
    }
}
