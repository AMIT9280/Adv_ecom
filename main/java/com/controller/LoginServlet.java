package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.UserBean;
import com.dao.UserDao;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
			String email = request.getParameter("email");
			String password = request.getParameter("pass");
			
			UserDao userDao = new UserDao();
			UserBean user = userDao.AuthenticateUser(email, password);
			
			RequestDispatcher rd = null;

			if(user == null) {
					request.setAttribute("Error", "Invalid Credentials");
					rd = request.getRequestDispatcher("Login.jsp");
					rd.forward(request, response);
					
			}else {
				
					request.setAttribute("msg","Loggedin");
					Cookie c = new Cookie("UserId", user.getUserId()+"");
					response.addCookie(c);
					
					if(user.getRole().equals("admin")) {
						
							//rd = request.getRequestDispatcher("Welcome.jsp");
						response.sendRedirect("Welcom.jsp");
					}else if(user.getRole().equals("customer")){
						response.sendRedirect("Home.jsp");
					}else {
						
							request.setAttribute("Error", "Please Contact Admin");
							rd = request.getRequestDispatcher("Login.jsp");
					}
			}
		 
	}
}
