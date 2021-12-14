package ch10_session;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ch10_session/study13/CartSave")
public class CartSaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();
		String p = request.getParameter("product");
		ArrayList<String> list = (ArrayList<String>) session.getAttribute("product");
		if(list == null) {
			list = new ArrayList<String>();
			list.add(p);
			session.setAttribute("product", list);
		} else {
			list.add(p);
		}
		
		PrintWriter out = response.getWriter();
		out.print("<html><body>Product 추가<br><a href='CartBasket'>장바구니 보기</a>");
		out.print("</body></html>");
	}
}
