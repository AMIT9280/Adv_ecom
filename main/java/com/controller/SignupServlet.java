package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.UserBean;
import com.dao.UserDao;
@WebServlet("/SignupServlet")

public class SignupServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("Name");
		String email = request.getParameter("Email");
		String pass = request.getParameter("pass");
		String gender = request.getParameter("Gender");
		
		
		UserBean user = new UserBean();
		user.setName(name);
		user.setemail(email);
		user.setGender(gender);
		user.setpassword(pass);
		
		UserDao userDao = new UserDao();
		
		userDao.AddUser(user);
		
		response.sendRedirect("Login.jsp");
		
		
	}
}
