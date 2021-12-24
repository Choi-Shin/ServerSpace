package article.service;

import article.model.Article;

public class ArticleData {
	private Article article;
	private String content;
	
	public ArticleData(Article article, String content) {
		this.article = article;
		this.content = content;
	}

	public Article getArticle() {
		return article;
	}

	public String getContent() {
		return content;
	}
	
}
