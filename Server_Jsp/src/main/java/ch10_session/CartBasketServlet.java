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
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		Enumeration<String> sName = session.getAttributeNames();
		List<String> productList = new ArrayList<String>();
		while (sName.hasMoreElements()) {
			String str = sName.nextElement();
			// product 문자열을 포함한 세션 이름을 찾는다
			if (str.contains("product")) {
				// sort 기능을 사용하기 위해 List 클래스에 product 포함된 이름을 추가한다.
				productList.add(str);
			}
		}
		// 역순 정렬(보통의 장바구니는 최근 넣은 것이 위로 가기 때문에 역순 정렬을 사용해봄)
		Collections.sort(productList, Collections.reverseOrder());
		for (String product : productList) {
			out.print("장바구니 리스트 상품: " + product + " [" + (String) session.getAttribute(product) + "]<br>");
		}
		out.print("<a href='product.html'>상품 선택 페이지</a><br>");
		out.print("<a href='CartDelete'>장바구니 비우기</a>");
		out.print("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
