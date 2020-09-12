package org.iii.eeit117.project.model.vo;

import java.sql.Blob;
import java.sql.Clob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "FILE_STORAGE")
public class FileStorageVo {
	
	/** id. */
	public static final String ATTR_FILE_STORAGE_ID = "fileStorageId";
	
	/** 檔案名稱. */
	public static final String ATTR_NAME = "name";
	
	/** class名稱. */
	public static final String ATTR_CLASS_NAME = "className";
	
	/** content. */
	public static final String ATTR_CONTENT = "content";
	
	/** id. */
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "FILE_STORAGE_ID", nullable = false)
	private Integer fileStorageId;
	
	/** 檔案名稱. */
	@Column(name = "NAME", length = 50, nullable = false)
	private String name;
	
	/** class名稱. */
	@Column(name = "CLASS_NAME", length = 50, nullable = false)
	private String className;
	
	/** 內容. */
	@Column(name = "CONTENT", nullable = false)
	private Blob content;

	public Integer getFileStorageId() {
		return fileStorageId;
	}

	public void setFileStorageId(Integer fileStorageId) {
		this.fileStorageId = fileStorageId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public Blob getContent() {
		return content;
	}

	public void setContent(Blob content) {
		this.content = content;
	}
	
}
