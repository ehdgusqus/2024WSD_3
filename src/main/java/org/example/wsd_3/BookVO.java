package org.example.wsd_3;

import java.util.Date;

// model
public class BookVO {
    private int id;         // 책 고유 ID
    private String title;   // 책 제목
    private String writer;  // 저자
    private String genre;   // 장르
    private String content; // 책 내용 요약
    private int stock;      // 재고 수량
    private Date createDate;      // 출판일

    // Constructor
    public BookVO(int id, String title, String writer, String genre, String content, int stock, Date createDate) {
        this.id = id;
        this.title = title;
        this.writer = writer;
        this.genre = genre;
        this.content = content;
        this.stock = stock;
        this.createDate = createDate;
    }
    public BookVO(int id, String title, String writer, String genre, String content, int stock) {
        this.id = id;
        this.title = title;
        this.writer = writer;
        this.genre = genre;
        this.content = content;
        this.stock = stock;
    }

    public int getId() {return id;}

    public void setId(int id) {this.id = id;}

    public String getTitle() {return title;}

    public void setTitle(String title) {this.title = title;}

    public String getWriter() {return writer;}

    public void setWriter(String writer) {this.writer = writer;}

    public String getGenre() {return genre;}

    public void setGenre(String genre) {this.genre = genre;}

    public String getContent() {return content;}

    public void setContent(String content) {this.content = content;}

    public int getStock() {return stock;}

    public void setStock(int stock) {this.stock = stock;}

    public Date getCreateDate() { return createDate; }

    public void setCreateDate(Date createDate) { this.createDate = createDate; }

}
