package org.iii.eeit117.project.controller;

import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.iii.eeit117.project.model.service.FileService;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/" + FileController.MODULE_NAME)
public class FileController {
	
	public static final String MODULE_NAME = "fs";
	
	@Autowired
	private FileService fileService;

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String handleFileUpload(List<MultipartFile> files) {
		try {
			for (int i = 0; i < files.size(); i++) {
				fileService.upload(files.get(i), ProductVo.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/FileUpload.jsp";
	}

	@RequestMapping(value = "/img/{fileStorageId}", method = RequestMethod.GET)
	public void downloadFile(@PathVariable("fileStorageId") Integer fileStorageId, HttpServletResponse response) {
		try {
			InputStream input = fileService.download(fileStorageId).getContent().getBinaryStream();
			IOUtils.copy(input, response.getOutputStream());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
