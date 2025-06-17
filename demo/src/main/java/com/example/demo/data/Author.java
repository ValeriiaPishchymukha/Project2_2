package com.example.demo.data;

import java.util.List;
import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "authors")
@Getter
@Setter
@EqualsAndHashCode
@ToString
public class Author {

    @Id
    @GeneratedValue
    private Integer id;

    @Column(name="name")
    private String name;

    @OneToMany(mappedBy = "author")
    private List<Book> books;

}