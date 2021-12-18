package ch18.mvc.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ch18.mvc.vo.EmpDTO;

public class EmpDAO_Pool {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public EmpDAO_Pool() {
		try {
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbID = "scott";
			String dbPassword = "scott";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
			System.out.println("접속 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<EmpDTO> select() {
		String sql = "select empno, ename, sal, deptno from emp";
		ArrayList<EmpDTO> select = new ArrayList<EmpDTO>();
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				EmpDTO emp = new EmpDTO();
				emp.setEmpno(rs.getString("empno"));
				emp.setEname(rs.getString("ename"));
				emp.setSal(rs.getString("sal"));
				emp.setDeptno(rs.getString("deptno"));
				select.add(emp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return select;
	}
}
