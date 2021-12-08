package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet10
 */
@WebServlet("/Servlet10")
public class Servlet10 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext sc = getServletContext();
		String serverInfo = sc.getServerInfo();
		int majorVersion = sc.getMajorVersion();
		int minorVersion = sc.getMinorVersion();
		PrintWriter out = response.getWriter();
		out.println("<html><body>ServerInfo(): " + serverInfo + "<br>");
		out.println("getMajorVersion(): " + majorVersion + "<br>");
		out.println("getMinorVersion(): " + minorVersion + "</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
