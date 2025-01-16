package org.mars.mafideju.beginner.ccurrencyformatter;

import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double payment = scanner.nextDouble();
        scanner.close();

        // Write your code here.
        Locale usLocale = new Locale("en", "US");
        NumberFormat us1 = NumberFormat.getCurrencyInstance(usLocale);
        String us = us1.format(payment);

        Locale indiaLocale = new Locale("en", "IN");
        NumberFormat india1 = NumberFormat.getCurrencyInstance(indiaLocale);
        String india = india1.format(payment);

        Locale chinaLocale = new Locale("zh", "CN");
        NumberFormat china1 = NumberFormat.getCurrencyInstance(chinaLocale);
        String china = china1.format(payment);

        Locale franceLocale = new Locale("fr", "FR");
        NumberFormat france1 = NumberFormat.getCurrencyInstance(franceLocale);
        String france = france1.format(payment);

        System.out.println("US: " + us);
        System.out.println("India: " + india);
        System.out.println("China: " + china);
        System.out.println("France: " + france);
    }
}
