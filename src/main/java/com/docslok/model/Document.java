package com.docslok.model;

import javax.persistence.*;
@Entity
@Table(name = "DOCUMENT")
public class Document {

	@Id
	@Column(name = "DOC_ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long docId;

	@Column(name = "DOC_NAME")
	private String docName;

	@Column(name = "DOC_TYPE")
	private String docType;

	@Column(name = "DOC_BYTE", length = 1000)
	private byte[] docByte;

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
	public Document() {
		super();
	}
	
	public Document(String docName, String docType, byte[] docByte) {
		this.docName = docName;
		this.docType = docType;
		this.docByte = docByte;
	}
}