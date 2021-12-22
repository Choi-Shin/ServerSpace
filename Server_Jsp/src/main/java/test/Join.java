package test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//@WebServlet("join.do")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher d = request.getRequestDispatcher("/통합구현/login.jsp");
		MemberDaologin dao = new MemberDaologin();
		int result = dao.login(id, password);
		//데이터가 존재할 경우
		if (result == 1) {
			session.setAttribute("id", id);
			session.setAttribute("result", 1);
			d.forward(request, response);
		} 
		//비밀번호 불일치
		else if (result == 0){
			session.setAttribute("result", 0);
			d.forward(request, response);
		} else {
			session.setAttribute("result", -1);
			d.forward(request, response);
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
