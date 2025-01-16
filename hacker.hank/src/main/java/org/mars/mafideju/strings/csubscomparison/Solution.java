package org.mars.mafideju.strings.csubscomparison;

import java.util.Comparator;
import java.util.Scanner;
import java.util.SortedSet;
import java.util.TreeSet;

public class Solution {

    public static String getSmallestAndLargest(String s, int k) {
        String smallest = "";
        String largest = "";
        SortedSet<String> set = new TreeSet<>();

        for (int i = 0; i < k; i++) {
            if (k <= s.length()) {
                String sub = s.substring(i, k);
                set.add(sub);
                k++;
                System.out.println("SUB " + sub);
            }

        }
        System.out.println("SET " + set);
        smallest = set.first();
        largest = set.last();

        return smallest + "\n" + largest;
    }


    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String s = scan.next();
        int k = scan.nextInt();
        scan.close();

        System.out.println(getSmallestAndLargest(s, k));
    }
}