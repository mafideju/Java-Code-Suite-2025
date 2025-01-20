package org.mars.mafideju.strings.danagrams;

import java.util.Scanner;

public class Solution {

    static boolean isAnagram(String a, String b) {
        // Complete the function
        if (a == null || b == null || a.length() != b.length()) {
            return false;
        }

        char[] aArray = a.toLowerCase().toCharArray();
        char[] bArray = b.toLowerCase().toCharArray();

        java.util.Arrays.sort(aArray);
        java.util.Arrays.sort(bArray);

        return java.util.Arrays.equals(aArray, bArray);
    }

    public static void main(String[] args) {

        Scanner scan = new Scanner(System.in);
        String a = scan.next();
        String b = scan.next();
        scan.close();
        boolean ret = isAnagram(a, b);
        System.out.println( (ret) ? "Anagrams" : "Not Anagrams" );
    }
}
