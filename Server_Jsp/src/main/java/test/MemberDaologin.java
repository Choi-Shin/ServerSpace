package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDaologin {

	private PreparedStatement pstmt;
	private ResultSet rs;
	private String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
	private String dbID = "jsp";
	private String dbPassword = "jsp";

	public MemberDaologin() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
		}
	}

	private Connection getConnection() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
			System.out.println("접속 성공");
			return conn;
		} catch (SQLException e) {
		}
		return conn;
	}

	public int login(String id, String password) {
		Connection conn = null;
		int result = 0;
		String SQL = "select password from member2 where id= ?";
		conn = this.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			result = pstmt.executeUpdate();
			if (result > 0) {
				return result;
			} else {
				return result;
			}
		} catch (SQLException ex) {
		}
		finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return result;
	}
}
