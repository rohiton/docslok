package com.docslok.service;

import com.docslok.model.Role;
import com.docslok.model.User;
import com.docslok.model.User.AccountStatus;
import com.docslok.repository.RoleRepository;
import com.docslok.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;

@Service
public class UserService {

	private UserRepository userRepository;
	private RoleRepository roleRepository;
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Autowired
	public UserService(UserRepository userRepository, RoleRepository roleRepository,
			BCryptPasswordEncoder bCryptPasswordEncoder) {
		this.userRepository = userRepository;
		this.roleRepository = roleRepository;
		this.bCryptPasswordEncoder = bCryptPasswordEncoder;
	}

	public User findUserByEmail(String email) {
		return userRepository.findByEmail(email);
	}

	public User findUserByAadhaarNo(Long aadhaarNo) {
		return userRepository.findUserByAadhaarNo(aadhaarNo);
	}

	public User findUserByUserName(String username) {
		return userRepository.findByUsername(username);
	}

	public User saveAsNewUser(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setAccountStatus(AccountStatus.ACTIVE);
		user.setActive(true);
		Date date = new Date();
		user.setAccountCreatedAt(date);
		Role userRole = roleRepository.findByRole("ROLE_USER");
		user.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
		return userRepository.save(user);
	}

	public User save(User user) {
		return userRepository.save(user);
	}
}
