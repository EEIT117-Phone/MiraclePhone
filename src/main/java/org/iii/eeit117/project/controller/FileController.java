package org.iii.eeit117.project.controller;

import java.io.IOException;
import java.util.List;

import org.iii.eeit117.project.model.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileController {
	
	@Autowired
	private FileService fileService;

	@RequestMapping(value = "uploadFile", method = RequestMethod.POST)
	public String handleFileUpload(List<MultipartFile> files) {
		try {
			for (int i = 0; i < files.size(); i++) {
				fileService.store(files.get(i), "10001_" + (i + 1));
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "redirect:/FileUpload.jsp";
	}

	@RequestMapping(value = "downloadFile", method = RequestMethod.GET)
	@ResponseBody
	public byte[] downloadFile(String filename) {
		try {
			return fileService.download(filename);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
