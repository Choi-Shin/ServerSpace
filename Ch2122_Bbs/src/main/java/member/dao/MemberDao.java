package member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import jdbc.JdbcUtil;
import member.model.Member;

public class MemberDao {

	public Member selectById(Connection conn, String id) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from member where memberid = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			Member member = null;
			if (rs.next()) {
				member = new Member(rs.getString("memberid"), rs.getString("name"), rs.getString("password"),
						toDate(rs.getTimestamp("regDate")));
			}
			return member;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	private Date toDate(Timestamp date) {
		return date == null ? null : new Date(date.getTime());
	}

	public void insert(Connection conn, Member mem) throws SQLException {
		String sql = "insert into member values(?, ?, ?, ?)";
		try (PreparedStatement pstmt = conn.prepareStatement(sql)){
			pstmt.setString(1, mem.getId());
			pstmt.setString(2, mem.getName());
			pstmt.setString(3, mem.getPassword());
			pstmt.setTimestamp(4, new Timestamp(mem.getRegDate().getDate()));
		}
	}

	public void update(Connection conn, Member mem) throws SQLException {
		String sql = "update member set name = ?, password = ?"
				+ "where memberid = ?";
		try (PreparedStatement pstmt = conn.prepareStatement(sql)){
			pstmt.setString(1, mem.getName());
			pstmt.setString(2, mem.getPassword());
			pstmt.setString(3, mem.getId());
			pstmt.executeUpdate();
		}
	}
}
