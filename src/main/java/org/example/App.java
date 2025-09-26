package com.example;

public class App {
    public static String hello(String who) {
        if (who == null || who.isBlank()) who = "World";
        return "Hello, " + who + "!";
    }

    public static void main(String[] args) {
        String who = System.getenv().getOrDefault("dddsxddddddddddddddddddxxxdddddddddddddxxxdxxxdddxxxdsfsdxxcdsdssxxdWHOEAssssASxssSddRRE", "GitHub Actions are new for the first time oddnly from pr here");
        System.out.println(hello(who));
    }
}
