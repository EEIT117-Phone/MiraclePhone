package org.iii.eeit117.project.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.iii.eeit117.project.model.service.impl.CartServiceImpl;
import org.iii.eeit117.project.model.vo.OrderInfo;

@WebServlet("/CartMainPageServlet")
public class CartMainPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    PrintWriter out;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processAction(request, response);
	}

	private void processAction(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		HttpSession session = request.getSession(); 
		CartServiceImpl addOrder = new CartServiceImpl();
		Set<String> map = (Set<String>) session.getAttribute("ShoppingCart2"); //ID Set
		List<OrderInfo> cartList = new LinkedList<>(); //javaBean List
		for(String i:map) {
			OrderInfo order = addOrder.cartInfo(i);
			cartList.add(order);
			//addOrder.cartInfo(i);
		}
		session.setAttribute("orderInfo", cartList);
		//OrderInfo order = addOrder.cartInfo("a1");
		//session.setAttribute("orderInfo", Arrays.asList(order));
		request.getRequestDispatcher("/cart/CartFirstPage.jsp").forward(request, response);
		//response.getOutputStream().write(map.toString().getBytes());
		
	}

}
