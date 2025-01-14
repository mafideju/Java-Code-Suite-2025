package org.mars.mafideju;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class Main {

    public static void main(String[] args) {
        /*
        IntStream.range(0, 10).filter(x -> x < 5).forEach(x -> System.out.print(x + " "));
        IntStream.range(0, 10).map(x -> x + 100).forEach(x -> System.out.print(x + " "));

        String[] names = {"Carlos", "Adre", "Francisco", "Zina","Mariano", "Eduardo", "Arnaldo"};
        Stream.of(names).sorted(Comparator.reverseOrder()).forEach(System.out::println);
         */

        List<Book> books = new ArrayList<>();
        books.add(new Book("Being and Time", "Heidegger", 560, Type.PHILOSOPHY));
        books.add(new Book("The Trial", "Franz Kafka", 260, Type.NOVEL));
        books.add(new Book("Death on the Nile", "Agatha Christie", 370, Type.THRILLER));
        books.add(new Book("The Republic", "Plato", 416, Type.PHILOSOPHY));
        books.add(new Book("Crime and Punishment", "Fyodor Dostoevsky", 671, Type.NOVEL));
        books.add(new Book("The Girl with the Dragon Tattoo", "Stieg Larsson", 465, Type.THRILLER));
        books.add(new Book("Meditations", "Marcus Aurelius", 304, Type.PHILOSOPHY));
        books.add(new Book("Murder on the Orient Express", "Agatha Christie", 347, Type.THRILLER));
        books.add(new Book("Thus Spoke Zarathustra", "Friedrich Nietzsche", 320, Type.PHILOSOPHY));
        books.add(new Book("The Metamorphosis", "Franz Kafka", 201, Type.NOVEL));
        books.add(new Book("The Stranger", "Albert Camus", 123, Type.PHILOSOPHY));
        books.add(new Book("The Brothers Karamazov", "Fyodor Dostoevsky", 824, Type.NOVEL));
        books.add(new Book("The Silence of the Lambs", "Thomas Harris", 367, Type.THRILLER));
        books.add(new Book("The Name of the Rose", "Umberto Eco", 536, Type.THRILLER));
        books.add(new Book("Phenomenology of Spirit", "Georg Wilhelm Friedrich Hegel", 640, Type.PHILOSOPHY));
        books.add(new Book("Brave New World", "Aldous Huxley", 288, Type.NOVEL));
        books.add(new Book("And Then There Were None", "Agatha Christie", 272, Type.THRILLER));
        books.add(new Book("The Myth of Sisyphus", "Albert Camus", 212, Type.PHILOSOPHY));

//        books.stream().filter(x -> x.getType() == Type.PHILOSOPHY).forEach(System.out::println);

        books.stream()
                .sorted(Comparator.comparing(Book::getPageCount))
                .map(Book::getTitle)
                .forEach(System.out::println);

        List<String> bookList = books.stream()
                .filter(x -> x.getPageCount() > 400)
                .map(book -> book.getTitle() + " " + book.getPageCount())
                .sorted()
//                .limit(2)
                .toList();

        bookList.forEach(System.out::println);

    }
}
