package com.example;

public class App {
    public static String hello(String who) {
        if (who == null || who.isBlank()) who = "World";
        return "Hello, " + who + "!";
    }

    public static void main(String[] args) {
<<<<<<< HEAD
        String who = System.getenv().getOrDefault("WHOEREWS", "GitHub Actions are new for the first time here");
=======
        String who = System.getenv().getOrDefault("WHOERRE", "GitHub Actions are new for the first time oddnly from pr here");
>>>>>>> main
        System.out.println(hello(who));
    }
}
