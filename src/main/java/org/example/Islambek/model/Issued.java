package org.example.Islambek.model;

import javax.persistence.*;
import java.io.Serializable;


public class Issued implements Serializable {


    private Long id;
    private Long book_id;

    public Issued() {
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getBook_id() {
        return book_id;
    }

    public void setBook_id(Long book_id) {
        this.book_id = book_id;
    }
}
