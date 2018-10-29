package kr.or.ddit.filter;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class RequestConterFilter
 */
public class RequestConterFilter implements Filter {
	
	//public static Map<String, Integer> rcMap = new HashMap<String, Integer>(); 
	
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}
	
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		/*String url = ((HttpServletRequest)request).getRequestURI();
		
		Map<String, Integer> conterMap = (Map<String, Integer>)request.getServletContext().getAttribute("conterMap");
		
		if(conterMap == null){
			conterMap = new HashMap<String, Integer>(); 
			Integer count = 1;
			conterMap.put(url, count);
		}
		
		if(!conterMap.containsKey(url)){
			Integer count = 1;
			conterMap.put(url, count);
			chain.doFilter(request, response);
		}
		
		if(conterMap.containsKey(url)){
			conterMap.replace(url, conterMap.get(url)+1);
		}
		
		ServletContext context =  request.getServletContext();
		context.setAttribute("counterMap", conterMap);
		System.out.println("조회 적용 끝");
		chain.doFilter(request, response);*/
		
		//application 객체 확보
		ServletContext application = request.getServletContext();
		
		//application 객체에서 requestMap 가져오기
		Map<String, Integer> rcMap = (Map<String,Integer>)application.getAttribute("rcMap");
		
		///application 객체에 rcmap 객체가 존재하는지확인 
		//없으면 신규생성후 저장
		if(rcMap == null){
			rcMap = new HashMap<String, Integer>();
		}
		
		//교수님 풀이법
		String uri= ((HttpServletRequest)request).getRequestURI();
		Integer count = rcMap.get(uri);
		
		if(count == null){
			rcMap.put(uri, 1);
		}else{
			rcMap.put(uri, ++count);
		}
		
		application.setAttribute("rcMap", rcMap);
		
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		
	}



}
