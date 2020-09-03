package org.iii.eeit117.project.controller;

import java.io.IOException;
import java.io.UncheckedIOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig(location = "E:/MiraclePhone/upload")
@WebServlet("/upload")
public class FileUploadServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String productId = "10001";

		Integer i = 0;
		for (Part part : req.getParts()) {
			try {
				part.write(productId + "_" + String.valueOf(++i));
			} catch (IOException ex) {
				throw new UncheckedIOException(ex);
			}
		}
		req.getRequestDispatcher("/FileUpload.jsp").forward(req, resp);
	}

}
