package com.docslok.repository;

import com.docslok.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	
	User findByEmail(String email);
	
	User findByUsername(String username);
	
	@SuppressWarnings("unchecked")
	User save(User user);
	
	User findUserByAadhaarNo(Long aadhaarNo);
}
