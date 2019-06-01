package com.codecool.web.model;

public class Poem extends AbstractModel {

    private String title;
    private String content;
    private int poetId;

    public Poem(int id, String title, String content, int poetId) {
        super(id);
        this.title = title;
        this.content = content;
        this.poetId = poetId;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public int getPoetId() {
        return poetId;
    }
}
