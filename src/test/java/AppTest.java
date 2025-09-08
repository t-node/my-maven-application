package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class AppTest {
    @Test
    void hello_says_hello() {
        assertEquals("Hello, Tester!", App.hello("Tester"));
    }
}
