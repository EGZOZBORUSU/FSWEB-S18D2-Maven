package com.workintech.sqldmlprocedures.entity;

import javax.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "kitap")
public class Kitap {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long kitapno;
    private String ad;
    private int puan;
    private long yazarno;
    private long turno;
}
