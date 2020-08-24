package org.iii.eeit117.project.controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CartAddServlet")
public class CartAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processAction(request, response);
	}

	private void processAction(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession(); 
		String productId = request.getParameter("productId");//getAjaxt傳入的值
		//如果購物車已存在商品，getAttribute會得到已存在的商品
		//如果沒有，才setAttribute
		Set<String> ids = (Set<String>) session.getAttribute("ShoppingCart2");
		
		if (ids == null) {
			ids = new HashSet<>();
			session.setAttribute("ShoppingCart2", ids);
		}
		ids.add(productId);
		String amount = Integer.toString(ids.size());
		//response.getOutputStream()只接受2進制
		response.getOutputStream().write(amount.getBytes());
		System.out.println(amount);
		//byte amount1 = (byte)ids.size();
		
	}

}
