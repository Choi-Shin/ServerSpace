package customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/PersonalInfoServlet")
public class PersonalInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		PersonalInfo pinfo = new PersonalInfo();
		pinfo.setName(request.getParameter("name"));
		pinfo.setGender(request.getParameter("gender").charAt(0));
		pinfo.setAge(Integer.parseInt(request.getParameter("age")));
		
		request.setAttribute("pinfo", pinfo);
		RequestDispatcher d = request.getRequestDispatcher("study/08/pInfo.jsp");
		d.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
