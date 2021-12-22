package ch18.mvc.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import ch18.mvc.vo.EmpDTO;

public class EmpDAO_Pool {
	Context initContext;
	DataSource ds;

	public EmpDAO_Pool() {
		

		try {
			initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			ds = (DataSource) envContext.lookup("jdbc/OracleDB");

		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<EmpDTO> select() {
		String sql = "select empno, ename, sal, deptno from emp";
		ArrayList<EmpDTO> select = new ArrayList<EmpDTO>();
		Connection conn = null;
		ResultSet rs = null;
		Statement stmt = null;
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
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
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return select;
	}
}
