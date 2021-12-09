package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ReadInitParameter
 */
@WebServlet("/ReadInitParameter")
public class ReadInitParameter extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Enumeration<String> e = getServletContext().getInitParameterNames();
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html><body>초기화 파라미터 목록::<br>");
		out.println("::[getInitParameter()::<br>");
		String log = getServletContext().getInitParameter("logEnabled");
		String debug = getServletContext().getInitParameter("debugLevel");
		out.println("logEnabled : " + log);
		out.println("debugLevel : " + debug);
		
		out.println("<ul>");
		while(e.hasMoreElements()) {
			String name = e.nextElement();
			String value = getServletContext().getInitParameter(name);
			ArrayList<String> line = new ArrayList<String>();
			line.add("<li>name : " + name + "</li><li>value: " + value + "</li><br>");	
			for(String l : line) {
				out.println(l);
			}
		}
		out.println("</ul></body></html>");
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
