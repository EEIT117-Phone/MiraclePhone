package org.iii.eeit117.project.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UncheckedIOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/download")
public class FileDownloadServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fileName = req.getParameter("filename");
		File f = new File("E:/MiraclePhone/upload/"+fileName);
		String path = getServletContext().getRealPath("/WEB-INF");
		FileInputStream input = new FileInputStream(f);
		OutputStream out = resp.getOutputStream();
		byte[] buffer = new byte[1];
		while (input.read(buffer) != -1) {
			out.write(buffer);
		}
	}
	

}
