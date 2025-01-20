package org.mars.mafideju.strings.estringsplit;

import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String s = scan.nextLine();
        // Write your code here.

        if(s.trim().isEmpty()) {
            System.out.println(0);
        } else {
            String[] splited = s.trim().split("[ !,?._'@]+");
            System.out.println(splited.length);
            Arrays.toString(splited);
            for (int i = 0; i < splited.length; i++) {
                System.out.println(splited[i]);
            }
        }

        scan.close();
    }
}


