package com.javahis.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javahis.web.util.CommonUtil;

public class EMRWebInitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EMRWebInitServlet() {
		super();
	}

	public void destroy() {
		super.destroy();
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		// 页面初始化
		CommonUtil.onInit(request, response);
		// 转到显示页面
		request.getRequestDispatcher("jsp/emr/main.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	public void init() throws ServletException {
		
	}

}
