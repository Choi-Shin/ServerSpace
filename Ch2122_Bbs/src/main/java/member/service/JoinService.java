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
	
	public void join (JoinRequest joinRequest) {
		Connection conn = null;
		// 연결
		try {
			conn = ConnectionProvider.getConnection();
			// 자동커밋을 끔 (시작점)
			conn.setAutoCommit(false);
			// 프라이빗 객체 memberDao 내부 메소드 중 Member 객체를 반환하는 메소드를 실행
			// 데이터 베이스에 이미 같은 아이디가 있는지 확인
			Member member = memberDao.selectById(conn, joinRequest.getId());
			
			if (member != null) {
				JdbcUtil.rollback(conn);
				throw new DuplicateIdException();
			}
			memberDao.insert(conn, new Member(
					joinRequest.getId(), joinRequest.getName(), 
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
