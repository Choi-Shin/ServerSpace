[문항4] 입력된 데이터를 받아서 처리하는 Join.java를 다음 조건에 따라 완성하시오
1) id와 password를 받아서 MemberDao를 활용하여 존재여부 체크
2) 데이터가 존재하면 session에 id를 저장하고 1을 result에 저장하고 login.jsp에 전달
데이터가 없거나 삭제 됐으면 result를 -1을 저장하고 login.jsp에 전달
암호가 맞지 않으면 result에 0을 저장하고 login.jsp에 전달
------------------------
[답안]
package test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("join.do")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher d = request.getRequestDispatcher("login.jsp");
		MemberDAO dao = new MemberDAO();
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
		} else{
			session.setAttribute("result", -1);
			d.forward(request, response);
		} 
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}