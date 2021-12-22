package ch19_filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter()
public class MFilter implements Filter {
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("MyFilter 초기화");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("MyFilter 요청 필터 코드 작업");
		request.setCharacterEncoding("UTF-8");
		System.out.println("MyFilter 응답 필터 코드 작업");
	}
	
	@Override
	public void destroy() {
		System.out.println("MyFilter 제거");
	}
}
