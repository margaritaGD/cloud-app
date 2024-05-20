package md.utm.cloudapp.rest

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class MainController {

    @GetMapping("/")
    fun main(): String {
        return "Hello World FROM DEMO!"
    }

    @GetMapping("/super/secret")
    fun superSecret(): String {
        return "How did you find our secret?"
    }

    @GetMapping("/health")
    fun healthCheck(): String {
        return "OK"
    }
}
