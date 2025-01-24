package org.mars.mafideju.numbers.bignumber;

import java.math.BigInteger;
import java.util.Scanner;

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */

        Scanner x = new Scanner(System.in);
        Scanner y = new Scanner(System.in);

        String num1 = x.nextLine();
        String num2 = y.nextLine();


        // CONVERTER PARA BIGINT
        BigInteger a = new BigInteger(num1);
        BigInteger b = new BigInteger(num2);


        // SOMAR E MULTIPLICAR A E B
        System.out.println(a.add(b));
        System.out.println(a.multiply(b));


        x.close();
        y.close();

    }
}
