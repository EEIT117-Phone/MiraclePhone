package org.iii.eeit117.project.model.service;

import org.iii.eeit117.project.model.vo.FileStorageVo;
import org.springframework.web.multipart.MultipartFile;

public interface FileService {
	
	public FileStorageVo upload(MultipartFile partFile, Class<?> claz) throws Exception;
	
	public FileStorageVo download(Integer fileStorageId);
	
	
}
