package member.service;

import java.sql.Connection;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import member.dao.MemberDao;
import member.model.Member;

public class JoinService {
	private MemberDao memberDao = new MemberDao();
	
	public void join (JoinRequest joinRequest) {
		Connection conn = null;
		// 연결
		conn = ConnectionProvider.getConnection();
		// 자동커밋을 끔 (시작점)
		conn.setAutoCommit(false);
		// 프라이빗 객체 memberDao 내부 메소드 중 Member 객체를 반환하는 메소드를 실행
		// 데이터 베이스에 이미 같은 아이디가 있는지 확인
		Member member = memberDao.selectById(conn, joinRequest.getId());
		
		if (member != null) {
			JdbcUtil.rollback(conn);
			
		}
	}
}
