import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class MemberDao {
//	5. member1테이블에 화면에서 받은 데이터를 입력하는 MemberDao프로그램을 다음 조건에 따라 완성하시오
//	1) Singleton을 사용하여 D먜객체 생성
//	2) DB연결하는 Connection을 getConnection()메서드로 분리
//	3) reg_date는 오라클의 sysdate를 사용하여 입력

	private static Connection conn;
	
	private MemberDao() {}
	private static MemberDao instance = new MemberDao(); 
	public static MemberDao getInstance() {
		return instance;
	}
	
	public static Connection getConnection() {
		// Connection conn = null;
		
		String driver = "oracle:jdbc:driver:OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String id = "member";
		String pw = "member";
		if (conn != null) {
			return conn;
		}

		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, id, pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
			return conn;
	}
	
	public int join(Member member) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO member VALUES (?,?,?, sysdate)";
		String id = member.getId();
		String pw = member.getPassword();
		String name = member.getName();
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			int result = pstmt.executeUpdate();
			return result;
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return 0;
	}
}