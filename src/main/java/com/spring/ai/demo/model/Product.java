package com.spring.ai.demo.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "products")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nameEnglish;

    private String nameArabic;

    private String serialNumber;

    private String description;

    @Column(columnDefinition = "vector(1536)")
    @Transient
    private float[] descriptionEmbedding;


}