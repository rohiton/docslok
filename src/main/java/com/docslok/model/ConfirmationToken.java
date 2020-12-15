package com.docslok.model;

import java.util.Date;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "EMAIL_CONFIRMATION")
public class ConfirmationToken {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "TOKEN_ID")
	private long tokenId;

	@Column(name = "CONFIRMATION_TOKEN")
	private String confirmationToken;

	@Column(name = "CREATION_DATE")
	@Temporal(TemporalType.TIMESTAMP)
	private Date creationDate;

	@OneToOne(targetEntity = User.class, fetch = FetchType.EAGER)
	@JoinColumn(nullable = false, name = "USER_ID")
	private User user;

	public ConfirmationToken() {
		super();
	}

	public ConfirmationToken(User user) {
		this.user = user;
		creationDate = new Date();
		confirmationToken = UUID.randomUUID().toString();
	}

	public long getTokenId() {
		return tokenId;
	}

	public void setTokenId(long tokenId) {
		this.tokenId = tokenId;
	}

	public String getConfirmationToken() {
		return confirmationToken;
	}

	public void setConfirmationToken(String confirmationToken) {
		this.confirmationToken = confirmationToken;
	}

	public Date getCreatedDate() {
		return creationDate;
	}

	public void setCreatedDate(Date creationDate) {
		this.creationDate = creationDate;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
