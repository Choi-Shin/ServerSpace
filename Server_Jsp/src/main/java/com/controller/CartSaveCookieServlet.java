package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CartSaveCookie
 */
@WebServlet("/study/09/CartSaveCookie")
public class CartSaveCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String product = request.getParameter("product");
		Cookie[] cookies = request.getCookies();
		Cookie c = null;
		if (cookies == null || cookies.length == 0) {
			c = new Cookie("product", product);
		} else {
			c = new Cookie("product", product);
		}
		response.addCookie(c);
		out.println("<html><body>Product 추가" + "<br>");
		out.println("<a href='CartBasketCookie'>장바구니 보기</a>");
		out.println("</body></html>");
	}

}
