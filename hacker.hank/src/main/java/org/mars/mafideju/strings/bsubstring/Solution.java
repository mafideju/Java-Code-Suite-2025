package org.mars.mafideju.strings.bsubstring;

import java.util.Scanner;

public class Solution {

    public static void main(String[] args) {

        try (Scanner in = new Scanner(System.in)) {
            String S = in.next();
            int start = in.nextInt();
            int end = in.nextInt();
            System.out.println(S.substring(start, end));
        }

    }
}
