package study;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Sport
 */
@WebServlet("/study/02/Sport")
public class Sport extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("UTF-8");
		String[] sport = request.getParameterValues("sport");
		String sex = request.getParameter("sex");
		PrintWriter out = response.getWriter();
		if (sport != null) {
			for (int i = 0; i < sport.length; i++)
				out.print("<h4>좋아하는 운동: " + sport[i] + "<br>");
		} else
			out.println("<h4>좋아하는 운동: 없음");
		out.println("<br>성별: " + sex);
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