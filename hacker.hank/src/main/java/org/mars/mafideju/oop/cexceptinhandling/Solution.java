package org.mars.mafideju.oop.cexceptinhandling;

import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */

        Scanner scanner = new Scanner(System.in);
        int a = scanner.nextInt();
        int b = scanner.nextInt();

        try {
            int div = a / b;
            System.out.println(div);
        } catch(InputMismatchException | ArithmeticException e) {
            System.out.println(e.getMessage());
        }
    }
}