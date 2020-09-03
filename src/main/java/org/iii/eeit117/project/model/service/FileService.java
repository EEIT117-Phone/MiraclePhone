package org.iii.eeit117.project.model.service;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public interface FileService {
	
	public void store(MultipartFile file, String targetName) throws IOException;
	
	public byte[] download(String fileName) throws IOException;
}
