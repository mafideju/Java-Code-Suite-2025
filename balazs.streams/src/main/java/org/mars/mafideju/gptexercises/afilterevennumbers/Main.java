package org.mars.mafideju.gptexercises.afilterevennumbers;

import java.util.Arrays;
import java.util.List;

public class Main {

    /*
        * Exercise 1: Filter Even Numbers
        Write a method that takes a list of integers and returns a list of only the even numbers using streams.

        Input Example: [1, 2, 3, 4, 5, 6]
        Expected Output: [2, 4, 6]
    * */

    public static void main(String[] args) {
        System.out.println(filterEvenNumbers(Arrays.asList(3,5,6,8,12,32,56,9)));
    }

    public static List<Integer> filterEvenNumbers(List<Integer> numbers) {
        // TODO: Use streams to filter even numbers
        List<Integer> filteredNumbers = numbers
                .stream()
                .filter(num -> num % 2 == 0)
                .toList();

        return filteredNumbers;
    }
}
