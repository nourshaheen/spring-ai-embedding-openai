# Spring AI Embedding Demo

### Overview

This project demonstrates how to utilize the **Spring AI Embedding module** to interact with the OpenAI Embedding API and store embeddings in a PostgreSQL database using **PGvector**.

While the default Spring AI PGvector implementation consolidates embeddings into a single table (`vector_store`), this demo customizes the storage by using separate tables for each model, providing a more modular and scalable approach.

### Reference Documentation

For further reference, please consider the following sections:
* [OpenAI Embedding](https://docs.spring.io/spring-ai/reference/api/embeddings/openai-embeddings.html)
* [PGvector Vector Database](https://docs.spring.io/spring-ai/reference/api/vectordbs/pgvector.html)
* [OpenAI Docs](https://platform.openai.com/docs/guides/embeddings)

### Installations Steps 

1- Clone the project from the repository
2- install the postgres database with pgvector extension
```shell
docker run -it --rm --name postgres-pg -p 5432:5432 -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres pgvector/pgvector:pg16
```
3- Import the sample data from the file `data.sql` in the project with vector extension

4- Get OpenAI API key from the OpenAI platform and set it in the application.properties file

5- Run the project and test the API
```
./mvnw spring-boot:run
```

