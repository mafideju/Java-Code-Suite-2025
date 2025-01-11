package org.mars.mafideju.sorting;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class Main {

    public static void main(String[] args) {
        List<Person> persons = new ArrayList<>();

            persons.add(new Person("Linux", 25));
            persons.add(new Person("Gloria", 30));
            persons.add(new Person("Mars", 20));
            persons.add(new Person("Mars", 35));
            persons.add(new Person("Mars", 90));
            persons.add(new Person("Doggo", 35));
            persons.add(new Person("Doggo", 89));


        Collections.sort(persons, Comparator.comparing(Person::getName).thenComparing(Person::getAge));

        for (Person person : persons) {
            System.out.println(person.getName() + " " + person.getAge());
        }
    }

}
