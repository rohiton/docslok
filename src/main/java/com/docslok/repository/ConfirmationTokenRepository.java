package com.docslok.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.docslok.model.ConfirmationToken;

public interface ConfirmationTokenRepository extends JpaRepository<ConfirmationToken, String> {
	ConfirmationToken findByConfirmationToken(String confirmationToken);
}
