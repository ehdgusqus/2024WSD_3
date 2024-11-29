package org.example.wsd_3;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DefaultController {

    @GetMapping("/")
    public String home() {
        return "index"; // index.jsp로 연결
    }
}
