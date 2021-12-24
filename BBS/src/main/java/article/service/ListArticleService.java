package article.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import article.dao.ArticleDao;
import article.model.Article;
import jdbc.connection.ConnectionProvider;

public class ListArticleService {
	private ArticleDao dao;
	private int size = 10;
	
	public ArticlePage getArticlePage(int pageNum) {
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			int total = dao.selectCount(conn);
			List<Article> list = dao.select(conn, (pageNum-1)*size , size);
			return new ArticlePage(total, pageNum, size, list);
		} catch (SQLException e) {
			throw new RuntimeException();
		}
	}
}
