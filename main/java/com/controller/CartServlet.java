package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.CartBean;
import com.dao.CartDao;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int productId = Integer.parseInt(request.getParameter("ProductId"));
		int userId = Integer.parseInt(request.getParameter("UserId"));

		CartBean cart = new CartBean();
		cart.setProductId(productId);
		cart.setUserId(userId);

			System.out.println(userId);
			System.out.println(productId);
		
			
		CartDao cartDao = new CartDao();
		cartDao.AddCart(cart);
		
		response.sendRedirect("Home.jsp");
	}
}
