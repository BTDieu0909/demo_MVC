package com.demo.mvc.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "product_translation")
@Data
public class ProductTranslation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;
    
    @Column(name = "language_id", nullable = false, length = 2)
    private String languageId;
    
    @Column(name = "product_name", nullable = false)
    private String productName;
}