package com.spring.ai.demo.controller;

import com.spring.ai.demo.dto.ProductSimilarityProjection;
import com.spring.ai.demo.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/ai/product")
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;

    @GetMapping("/embed")
    public void embed() {
         productService.updateProductEmbedding();
    }

    @GetMapping("/similarities")
    public ResponseEntity<List<ProductSimilarityProjection>> similarities(@RequestParam String description) {
        return ResponseEntity.ok(productService.findTop5SimilarProducts(description));
    }


}
