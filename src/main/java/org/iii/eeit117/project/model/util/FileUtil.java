package org.iii.eeit117.project.model.util;

import java.sql.Blob;

import javax.sql.rowset.serial.SerialBlob;

import org.springframework.web.multipart.MultipartFile;

public class FileUtil {
public static Blob convertMultipartFileToBlob(MultipartFile productImage) throws Exception {
		
		byte[] b = productImage.getBytes();
		return new SerialBlob(b);
	}
}
