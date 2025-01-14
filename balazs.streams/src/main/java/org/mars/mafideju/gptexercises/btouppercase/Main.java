package org.mars.mafideju.gptexercises.btouppercase;

import java.util.Arrays;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        System.out.println(toUpperCase(Arrays.asList("palavras", "apenas", "pequenas", "apple", "banana", "cherry")));
    }

    public static List<String> toUpperCase(List<String> words) {
        // TODO: Use streams to convert to uppercase
        List<String> uppercased = words
                .stream()
                .map(String::toUpperCase)
                .toList();

        return uppercased;
    }
}
/*Exercise 2: Convert Strings to Uppercase
Write a method that takes a list of strings and converts all of them to uppercase using streams.

java
Copy code
public List<String> toUpperCase(List<String> words) {
    // TODO: Use streams to convert to uppercase
}
Input Example: ["apple", "banana", "cherry"]
Expected Output: ["APPLE", "BANANA", "CHERRY"]*/