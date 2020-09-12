package org.iii.eeit117.project.model.service.impl;

import javax.sql.rowset.serial.SerialBlob;

import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.dao.FileStorageDao;
import org.iii.eeit117.project.model.service.FileService;
import org.iii.eeit117.project.model.vo.FileStorageVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileServiceImpl extends BaseServiceImpl<FileStorageVo, Integer> implements FileService {

	@Autowired
	private FileStorageDao fileStorageDao;
	
	@Override
	public BaseDao<FileStorageVo, Integer> getDao() {
		return fileStorageDao;
	}

	@Override
	public FileStorageVo upload(MultipartFile partFile, Class<?> claz) throws Exception {
		FileStorageVo fileStorageVo = new FileStorageVo();
		fileStorageVo.setName(partFile.getOriginalFilename());
		fileStorageVo.setClassName(claz.getSimpleName());
		fileStorageVo.setContent(new SerialBlob(partFile.getBytes()));
		return fileStorageDao.save(fileStorageVo);
	}

	@Override
	public FileStorageVo download(Integer fileStorageId) {
		return fileStorageDao.findOne(fileStorageId);
	}

}
