package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.User;
import com.connection.DBConnection;
import com.dao.UserDao;



public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UserLogin() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		try(PrintWriter out = response.getWriter()){
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			/*out.println(email); 
			out.println(password); */
			
			try {
			UserDao udao = new UserDao(DBConnection.createConnection());
			User user = udao.userLogin(email, password);
			
			if(user!=null) {
				//out.println("user login successfully");
				request.getSession().setAttribute("auth",user);
				response.sendRedirect("index.jsp");
			}else {
				out.println("user login failed");
			}
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
	}

}
