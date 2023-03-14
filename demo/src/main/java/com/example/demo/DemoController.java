package main.java;

@Controller
public class DemoController {
    @GetMapping("/")
    public @ResponseBody String first() {
        return "안녕하세요";
    }
}


