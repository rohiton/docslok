package com.docslok.repository;

import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;

import com.docslok.model.Document;

public interface DocumentRepository extends JpaRepository<Document, Long> {
	
	Optional<Document> findById(Long docId);
}