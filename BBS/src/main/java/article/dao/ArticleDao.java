package article.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import article.model.Article;
import article.model.Writer;
import jdbc.JdbcUtil;

public class ArticleDao {
	public Article insert(Connection conn, Article article) throws SQLException {
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "insert into article values(" + "article_no_seq.nextval,?,?,?,?,?,0)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, article.getWriter().getId());
			pstmt.setString(2, article.getWriter().getName());
			pstmt.setString(3, article.getTitle());
			pstmt.setTimestamp(4, toTimeStamp(article.getRegDate()));
			pstmt.setTimestamp(5, toTimeStamp(article.getModDate()));
			int insert = pstmt.executeUpdate();
			if (insert > 0) {
				stmt = conn.createStatement();
				String select = "SELECT article_no_seq.CURRVAL FROM DUAL;";
				rs = stmt.executeQuery(select);

				if (rs.next()) {
					int newNo = rs.getInt(1);
					return new Article(newNo, article.getWriter(), article.getTitle(), article.getRegDate(),
							article.getModDate(), article.getReadCnt());
				}
			}
			return null;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
			JdbcUtil.close(pstmt);
		}
	}

	private Timestamp toTimeStamp(Date date) {
		return new Timestamp(date.getDate());
	}

	public int selectCount(Connection conn) throws SQLException {
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "Select count(*) from article";

		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				return rs.getInt(1);
			}
			return 0;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	}

	public List<Article> select(Connection conn, int startRow, int size) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Article> articles = new ArrayList<Article>();
		String sql = "SELECT * FROM(" + "SELECT ROWNUM AS RNUM, "
				+ "A.* FROM (SELECT * FROM article ORDER BY article_no DESC) A " + "WHERE ROWNUM <= ?)"
				+ "WHERE RNUM > ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, size + startRow);
			pstmt.setInt(2, size);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				articles.add(convertArticle(rs));
			}
			return articles;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	private Article convertArticle(ResultSet rs) throws SQLException {
		return new Article(rs.getInt("article_no"), new Writer(rs.getString("writer_id"), rs.getString("writer_name")),
				rs.getString("title"), rs.getDate("regDate"), rs.getDate("modDate"), rs.getInt("read_cnt"));
	}

	public Article selectById(Connection conn, int no) throws SQLException {
		String sql = "SELECT * FROM ARTICLE WHERE ARTICLE_NO = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			Article article = null;
			if (rs.next()) {
				article = convertArticle(rs);
			}
			return article;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	public int update(Connection conn, int no, String title) throws SQLException {
		String sql = "UPDATE article SET title = ?, modDate = sysdate, "
				+ "WHERE article_no = ?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setInt(2, no);
			return pstmt.executeUpdate();
		} finally {
			JdbcUtil.close(pstmt);
		}
	}

}
