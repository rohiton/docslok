package com.docslok.model;

import java.util.Date;

import javax.persistence.*;
@Entity
@Table(name = "DOCUMENT")
public class Document {

	@Id
	@Column(name = "DOC_ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long docId;

	@Column(name = "USER_ID")
	private Integer userId;

	@Column(name = "DOC_NAME")
	private String docName;

	@Column(name = "DOC_TYPE")
	private String docType;

	@Column(name = "DOC_BYTE", length = 1000)
	private byte[] docByte;

	@Column(name = "DOC_SIZE")
	private Integer docSize;

	@Column(name = "DOC_UPLOADED_AT")
	private Date docUploadedAt;

	@Column(name = "LAST_MODIFIED_AT")
	private Date lastModifiedAt;

	public Long getDocId() {
		return docId;
	}
	
	public void setDocId(Long docId) {
		this.docId = docId;
	}
	
	public String getDocName() {
		return docName;
	}
	
	public void setDocName(String docName) {
		this.docName = docName;
	}
	
	public String getDocType() {
		return docType;
	}
	
	public void setDocType(String docType) {
		this.docType = docType;
	}
	
	public byte[] getDocByte() {
		return docByte;
	}
	
	public void setDocByte(byte[] docByte) {
		this.docByte = docByte;
	}
	
	public Integer getUserId() {
		return userId;
	}
	
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
	public Integer getDocSize() {
		return docSize;
	}
	
	public void setDocSize(Integer docSize) {
		this.docSize = docSize;
	}
	
	public Date getDocUploadedAt() {
		return docUploadedAt;
	}
	
	public void setDocUploadedAt(Date docUploadedAt) {
		this.docUploadedAt = docUploadedAt;
	}
	
	public Date getLastModifiedAt() {
		return lastModifiedAt;
	}
	
	public void setLastModifiedAt(Date lastModifiedAt) {
		this.lastModifiedAt = lastModifiedAt;
	}
	
	public Document() {
		super();
	}

	public Document(String docName, String docType, byte[] docByte, Integer userId, Integer docSize, Date docUploadedAt) {
		this.docName = docName;
		this.docType = docType;
		this.docByte = docByte;
		this.userId = userId;
		this.docSize = docSize;
		this.docUploadedAt = docUploadedAt;
	}
}