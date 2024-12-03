package com.spring.ai.demo.service;

import com.spring.ai.demo.dto.ProductSimilarityProjection;
import com.spring.ai.demo.model.Product;
import com.spring.ai.demo.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.ai.embedding.Embedding;
import org.springframework.ai.embedding.EmbeddingModel;
import org.springframework.ai.embedding.EmbeddingResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;
    private final EmbeddingModel embeddingModel;

    public List<ProductSimilarityProjection> findTop5SimilarProducts(String description){
        EmbeddingResponse embeddingResponse = embeddingModel.embedForResponse(List.of(description));
        return productRepository.findTop5SimilarProducts(embeddingResponse.getResult().getOutput());
    }

    @Transactional
    public void updateProductEmbedding(){
        int pageNum = 0;
        int pageSize = 10;
        Page<Product> productPage;

        do {
            // Fetch a page of products
            productPage = productRepository.findAll(PageRequest.of(pageNum, pageSize));
            List<Product> products = productPage.getContent();

            // Extract descriptions for embedding
            List<String> descriptions = products.stream()
                    .map(Product::getDescription)
                    .toList();

            // Generate embeddings for all descriptions in bulk
            EmbeddingResponse embeddingResponse = embeddingModel.embedForResponse(descriptions);
            List<Embedding>  embeddings = embeddingResponse.getResults();

            // Update each product with its corresponding embedding
            for (int i = 0; i < products.size(); i++) {
                Product product = products.get(i);
                productRepository.updateProductEmbedding(embeddings.get(i).getOutput(), product.getId());
            }
            // Move to the next page
            pageNum++;
        }while (productPage.hasNext());

    }
}
