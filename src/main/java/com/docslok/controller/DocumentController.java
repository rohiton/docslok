package com.docslok.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.Optional;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.Inflater;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.docslok.repository.DocumentRepository;
import com.docslok.service.UserService;
import com.docslok.model.Document;
import com.docslok.model.User;

@RestController
public class DocumentController {

	@Autowired
	private UserService userService;

	@Autowired
	DocumentRepository documentRepository;


	@PostMapping("/dashboard/upload-documents/document/upload")
	public ModelAndView uplaodImage(@RequestParam("document") MultipartFile file) throws IOException {
		System.out.println("Original Image Byte Size - " + file.getBytes().length);
		ModelAndView mav = new ModelAndView();
		Date date = new Date();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User u = userService.findUserByUserName(auth.getName());
		Document img = new Document(file.getOriginalFilename(), file.getContentType(),
				compressBytes(file.getBytes()),u.getUserId(),(int) file.getSize(),date);
		documentRepository.save(img);
		mav.setViewName("redirect:/dashboard");
		return mav;
	}

	@GetMapping(path = { "/dashboard/upload-documents/document/{docId}" })
	public Document getImage(@PathVariable("docId") Long docId) throws IOException {
		final Optional<Document> doc = documentRepository.findById(docId);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User u = userService.findUserByUserName(auth.getName());
		Document document = new Document();
		document.setDocId(doc.get().getDocId());
		document.setDocName(doc.get().getDocName());
		document.setDocType(doc.get().getDocType());
		document.setUserId(u.getUserId());
		document.setDocSize(doc.get().getDocSize());
		document.setDocUploadedAt(doc.get().getDocUploadedAt());
		document.setLastModifiedAt(doc.get().getLastModifiedAt());
		return document;
	}
	public static byte[] compressBytes(byte[] data) {
		Deflater deflater = new Deflater();
		deflater.setInput(data);
		deflater.finish();
		ByteArrayOutputStream outputStream = new ByteArrayOutputStream(data.length);
		byte[] buffer = new byte[1024];
		while (!deflater.finished()) {
			int count = deflater.deflate(buffer);
			outputStream.write(buffer, 0, count);
		}
		try {
			outputStream.close();
		} catch (IOException e) {
		}
		System.out.println("Compressed Image Byte Size - " + outputStream.toByteArray().length);
		return outputStream.toByteArray();
	}
	public static byte[] decompressBytes(byte[] data) {
		Inflater inflater = new Inflater();
		inflater.setInput(data);
		ByteArrayOutputStream outputStream = new ByteArrayOutputStream(data.length);
		byte[] buffer = new byte[1024];
		try {
			while (!inflater.finished()) {
				int count = inflater.inflate(buffer);
				outputStream.write(buffer, 0, count);
			}
			outputStream.close();
		} catch (IOException ioe) {
		} catch (DataFormatException e) {
		}
		return outputStream.toByteArray();
	}
}