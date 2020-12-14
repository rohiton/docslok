package com.docslok.model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "USERS")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "USER_ID")
	private Integer user_id;

	@Column(name = "USERNAME", unique = true)
	private String username;

	@Column(name = "EMAIL", unique = true)
	private String email;

	@Column(name = "PASSWORD")
	private String password;

	@Column(name = "FIRSTNAME")
	private String firstname;

	@Column(name = "LASTNAME")
	private String lastname;

	@Column(name = "AADHAAR_NO")
	private int aadhaar_no;

	@Column(name = "ACTIVE")
	private boolean active;

	@Column(name = "EMAIL_VERIFIED")
	private boolean email_verified;

	public enum AccountStatus {
		ACTIVE, SUSPENDED, DROPPED
	}

	@Enumerated(EnumType.STRING)
	@Column(name = "ACCOUNT_STATUS")
	private AccountStatus account_status;

	@ManyToMany(cascade = CascadeType.MERGE)
	@JoinTable(name = "USER_ROLE", joinColumns = @JoinColumn(name = "USER_ID"), inverseJoinColumns = @JoinColumn(name = "ROLE_ID"))
	private Set<Role> roles;

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public int getAadhaar_no() {
		return aadhaar_no;
	}

	public void setAadhaar_no(int aadhaar_no) {
		this.aadhaar_no = aadhaar_no;
	}

	public Boolean getActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}

	public Boolean getEmail_verified() {
		return email_verified;
	}

	public void setEmail_verified(Boolean email_verified) {
		this.email_verified = email_verified;
	}

	public AccountStatus getAccount_status() {
		return account_status;
	}

	public void setAccount_status(AccountStatus account_status) {
		this.account_status = account_status;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
}
