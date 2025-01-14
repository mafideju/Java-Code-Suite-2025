package org.mars.mafideju;

public class Book {

    private String title;
    private String author;
    private Integer pageCount;
    private Type type;

    public Book(String title, String author, Integer pageCount, Type type) {
        this.title = title;
        this.author = author;
        this.pageCount = pageCount;
        this.type = type;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Integer getPageCount() {
        return pageCount;
    }

    public void setPageCount(Integer pageCount) {
        this.pageCount = pageCount;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Book{" +
                "title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", pageCount=" + pageCount +
                ", type=" + type +
                '}';
    }
}
 enum Type {
    NOVEL, PHILOSOPHY, THRILLER, HISTORY
 }