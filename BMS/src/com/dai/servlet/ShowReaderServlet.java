package com.dai.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dai.common.DaoFactory;
import com.dai.dao.ReaderDao;
import com.dai.entity.Reader;

/**
 * Servlet implementation class ShowReaderServlet
 */
@WebServlet("/ShowReaderServlet")
public class ShowReaderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowReaderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//定义消息体的编码格式
		request.setCharacterEncoding("utf-8");
		//定义输出的编码格式
		response.setContentType("text/html;charset=UTF-8");
		//连接数据库
		ReaderDao rdao = (ReaderDao) DaoFactory.getInstance("readerDao");
		//存入list集合
		List<Reader> rlist = rdao.findAll();
		//存入requset
		request.setAttribute("readerList", rlist);
		//跳转
		request.getRequestDispatcher("/showreader.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
