package com.dai.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dai.common.DaoFactory;
import com.dai.dao.AdminDao;
import com.dai.entity.Admin;


/**
 * Servlet implementation class LoginServleet
 */
@WebServlet("/LoginServleet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		response.setContentType("text/html;charset=UTF-8");
		
		if("".equals(username)||"".equals(password)) {
			request.setAttribute("msg", "用户名或密码不能为空");
		}else {
			AdminDao adao=(AdminDao) DaoFactory.getInstance("adminDao");
			Admin u1 = adao.findOne("select * from admin where adminname = ?", username);
			if(u1 == null){
				request.setAttribute("msg","用户不存在");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}else{
				
				if(username.equals(u1.getAdminname())&&password.equals(u1.getPassword())) {
					response.sendRedirect(request.getContextPath() + "/main.jsp");
				}else {
					request.setAttribute("msg", "用户名或密码错误，请重新输入");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			 }
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
