package member.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import member.dao.MemberDao;
import member.model.Member;

public class JoinService {
	private MemberDao memberDao = new MemberDao();
	
	public void join(JoinRequest joinRequest) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);//커밋의 시작점(롤백할 지점)
			Member member = memberDao.selectById(conn, joinRequest.getId());
			if(member != null) {
				// 이미 존재하는 아이디인 경우
				JdbcUtil.rollback(conn);
				throw new DuplicateIdException();
			}
			String print = joinRequest.getId() + " " + joinRequest.getName() 
					 + " "+ joinRequest.getPassword() + " " + new Date();
			System.out.println(print);
			memberDao.insert(conn, 
					new Member(joinRequest.getId(),joinRequest.getName(), 
					joinRequest.getPassword(), new Date()));
			conn.commit();
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
}
