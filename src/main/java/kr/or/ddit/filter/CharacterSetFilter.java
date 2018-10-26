package kr.or.ddit.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class CharacterSetFilter
 */
public class CharacterSetFilter implements Filter {

	public void init(FilterConfig fConfig) throws ServletException {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		
		System.out.println("적용전");
		
		
		//type 캐스팅
		String test = "test";
		String url = ((HttpServletRequest)request).getRequestURI();
		
		request.getServletContext().setAttribute("test", "test");
		
		
		request.setCharacterEncoding("utf-8");
		chain.doFilter(request, response);
		System.out.println("적용후");
	}

	public void destroy() {
	}

}
