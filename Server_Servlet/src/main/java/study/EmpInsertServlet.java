package study;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/study/16/EmpInsert")
public class EmpInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		Connection conn;
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "scott";
		String pw = "scott";
		String empno = request.getParameter("empno");
		String ename = request.getParameter("ename");
		String sal = request.getParameter("sal");
		String deptno = request.getParameter("deptno");
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, id, pw);
			String sql = "Insert into emp (empno, ename, sal, deptno) "
					+ "values (?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, empno);
			pstmt.setString(2, ename);
			pstmt.setString(3, sal);
			pstmt.setString(4, deptno);
			int result = pstmt.executeUpdate();
			if (result == 1) {
				out.println("<html><body>저장 성공");
				out.println("<form action='EmpSelect'>\n"
						+ "	<input type='submit' value='사원 목록 보기'>\n"
						+ "</form></body></html>");
			} else {
				out.println("<html><body>저장 실패");
				response.sendRedirect("insertForm.html");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
