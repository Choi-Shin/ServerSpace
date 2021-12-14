package ch10_session;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CartBasketServlet
 */
@WebServlet("/ch10_session/study13/CartBasket")
public class CartBasketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession(false);
		PrintWriter out = response.getWriter();
		session.setMaxInactiveInterval(200);
		out.print("<html><body>");
		if (session != null) {
			ArrayList<String> list = (ArrayList<String>) session.getAttribute("product");
			out.println("상품: " + list + "<br>");
		} else {
			out.println("세션 없음<br>");
		}
		out.print("<a href='product.html'>상품 선택 페이지</a><br>");
		out.print("<a href='CartDelete'>장바구니 비우기</a>");
		out.print("</body></html>");
	}

}
