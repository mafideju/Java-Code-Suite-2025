package org.mars.mafideju.mapsopts;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.stream.Stream;

public class App {


    public static void main(String[] args) throws IOException {

        String path = "/home/dbmars/Projects/java25/java-suite/balazs.streams/src/main/resources/names";


        // TODO: PEGAR OS CAMPOS SEPARADOS DENTRO DO CSV
        try (Stream<String> linestream = Files.lines(Paths.get(path))) {
            linestream
                    .map(line -> line.split(","))
                    .map(line -> line[1])
                    .forEach(System.out::println);
        }
    }
}
