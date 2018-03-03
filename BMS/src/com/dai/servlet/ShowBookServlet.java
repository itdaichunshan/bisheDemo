package com.dai.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dai.common.DaoFactory;
import com.dai.dao.BookDao;
import com.dai.entity.Book;




/**
 * Servlet implementation class ShowBookServlet
 */
public class ShowBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//定义消息体的编码格式
	request.setCharacterEncoding("utf-8");
	//定义输出的编码格式
	response.setContentType("text/html;charset=UTF-8");
	//连接数据库
	BookDao bdao = (BookDao) DaoFactory.getInstance("bookDao");
	//存入list集合
	List<Book> blist = bdao.findAll();
	//存入requset
	request.setAttribute("bookList", blist);
	//跳转
	request.getRequestDispatcher("/showbook.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
