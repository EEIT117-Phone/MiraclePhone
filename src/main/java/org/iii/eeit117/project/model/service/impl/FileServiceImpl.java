package org.iii.eeit117.project.model.service.impl;

import java.io.File;
import java.io.IOException;

import javax.annotation.PostConstruct;

import org.apache.commons.io.FileUtils;
import org.iii.eeit117.project.model.service.FileService;
import org.iii.eeit117.project.property.AppProperty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileServiceImpl implements FileService {

	@Autowired
	private AppProperty appProperty;
	
	@PostConstruct
	public void init() {
		File f = new File(appProperty.getFileRoot());
		f.mkdirs();
	}
	
	@Override
	public void store(MultipartFile file, String targetName) throws IOException {
		FileUtils.writeByteArrayToFile(new File(appProperty.getFileRoot() + targetName), file.getBytes());
	}
	
	@Override
	public byte[] download(String fileName) throws IOException {
		return FileUtils.readFileToByteArray(new File(appProperty.getFileRoot() + fileName));
	}

}
