package test1221;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/test1221/1/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		if (id.equals("java") && passwd.equals("java")) {
			session.setAttribute("id_attr", id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("loginSuccess.jsp");
			dispatcher.forward(request, response);
		} else {
			out.println("<script>alert('아이디나 비밀번호가 일치하지 않습니다.');"
					+ "location.href='login.html';</script>");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
