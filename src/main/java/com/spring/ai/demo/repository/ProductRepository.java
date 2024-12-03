package com.spring.ai.demo.repository;

import com.spring.ai.demo.dto.ProductSimilarityProjection;
import com.spring.ai.demo.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {


    @Query(value = """
       SELECT p.id AS id, p.name_english AS nameEnglish, p.name_arabic AS nameArabic,
                          p.serial_number AS serialNumber, p.description AS description,
                          p.description_embedding <-> CAST(:embedding AS vector) AS similarity
                   FROM products p
                   ORDER BY similarity
                   LIMIT 20
    """, nativeQuery = true)
    List<ProductSimilarityProjection> findTop5SimilarProducts(@Param("embedding") float[] embedding);

    @Modifying
    @Query(value = """
         update products set description_embedding = :embedding
         where id = :productId
      """ , nativeQuery = true)
    int updateProductEmbedding(float[] embedding, Long productId);

}
