package member.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import member.dao.MemberDao;
import member.model.Member;

public class ChangePasswordService {
	private MemberDao dao = new MemberDao();

	public void changePassword(String userId, String curPwd, String newPwd) {
		Connection conn = null;
		
		try{
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			Member member = dao.selectById(conn, userId);
			if (member == null) {
				throw new MemberNotFoundException();
			}
			if (!member.matchPassword(curPwd)) {
				throw new InvalidPasswordException();
			}
			member.changePassword(newPwd);
			dao.update(conn, member);
			conn.commit();
		} catch (SQLException  e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException();
		} finally {
			JdbcUtil.close(conn);
		}
	}
}
