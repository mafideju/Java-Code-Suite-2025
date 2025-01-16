package org.mars.mafideju.beginner.bdatetime;

import java.io.*;
import java.math.*;
import java.nio.charset.StandardCharsets;
import java.security.*;
import java.text.*;
import java.time.*;
import java.time.format.DateTimeFormatter;
import java.time.format.TextStyle;
import java.util.*;
import static java.util.stream.Collectors.joining;
import static java.util.stream.Collectors.toList;

class Result {

    public static void main(String[] args) {

        int month = 01;
        int year = 2025;
        int day = 14;

        StringBuilder dataRecebida = new StringBuilder();
        dataRecebida.append(String.format("%04d", year)).append("-");
        dataRecebida.append(String.format("%02d", month)).append("-");
        dataRecebida.append(String.format("%02d", day));

        LocalDate data = LocalDate.parse(dataRecebida, DateTimeFormatter.ofPattern("yyyy-MM-dd"));

        String diaDaSemana = String.valueOf(data.getDayOfWeek());

        // Exibir o dia da semana
        System.out.println("Dia da semana: " + diaDaSemana);
    }

}

//class Solution {
//    public static void main(String[] args) throws IOException {
//        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
//        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(System.getenv("OUTPUT_PATH")));
//
//        String[] firstMultipleInput = bufferedReader.readLine().replaceAll("\\s+$", "").split(" ");
//
//        int month = Integer.parseInt(firstMultipleInput[0]);
//
//        int day = Integer.parseInt(firstMultipleInput[1]);
//
//        int year = Integer.parseInt(firstMultipleInput[2]);
//
//        String res = Result.findDay(month, day, year);
//
//        bufferedWriter.write(res);
//        bufferedWriter.newLine();
//
//        bufferedReader.close();
//        bufferedWriter.close();
//    }
//}

