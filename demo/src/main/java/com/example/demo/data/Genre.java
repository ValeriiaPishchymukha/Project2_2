package com.example.demo.data;

import java.util.List;
import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;


@Entity
@Table(name = "genres")
@Getter
@Setter
@EqualsAndHashCode
public class Genre {

    @Id
    @GeneratedValue
    private Integer id;

    @Column(name="name")
    private String name;

    @ManyToMany(mappedBy = "genres")
    private List<Book> books;
}