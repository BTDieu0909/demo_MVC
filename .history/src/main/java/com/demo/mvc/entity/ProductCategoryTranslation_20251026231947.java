package com.demo.mvc.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "product_category_translation")
@Data
public class ProductCategoryTranslation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    
    @ManyToOne
    @JoinColumn(name = "product_category_id")
    private ProductCategory category;
    
    @Column(name = "language_id", nullable = false, length = 2)
    private String languageId;
    
    @Column(name = "category_name", nullable = false)
    private String categoryName;
}