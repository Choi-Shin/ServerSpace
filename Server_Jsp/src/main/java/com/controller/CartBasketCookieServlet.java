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
 * Servlet implementation class CartBasketCookieServlet
 */
@WebServlet("/study/09/CartBasketCookie")
public class CartBasketCookieServlet extends HttpServlet {
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
		
		Cookie[] cookies = request.getCookies();
		out.println("<html><body>장바구니 리스트<br>");
		for (int i=0; i<cookies.length; i++) {
			if (cookies[i].getName().contains("product")) {
				int j=1;
				out.println("product " + j + " : " + cookies[i].getValue() + "<br>");
				j++;
			}
		}
		out.println("<br><a href='cookie.html'>상품 선택 페이지</a>");
		out.println("<br><a href='CartDeleteCookie'>장바구니 비우기</a>");
		out.println("</body></html>");
	}

}
