package com.ssm.utils;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.ssm.core.po.UserInfo;

/**
 * Servlet Filter implementation class FrontLoginFilter
 */
public class FrontLoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public FrontLoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest)request ;
        HttpSession session  =  req.getSession() ;
        		//获取session
        UserInfo user = (UserInfo)session.getAttribute("USER") ;
                //获取到拦截的url
        String url = req.getRequestURI() ;
        		//拦截的字段包含admin（就是服务器请求的url中包含的字符串）
        if( !url.contains("admin") ) {    //如果请求的字段不包含admin则不需要过滤
        	chain.doFilter(request, response);
        }else if(url.contains("admin") && user != null){  //如果请求的字段包含admin，并且用户已经登录，不需要过滤。
        	chain.doFilter(request, response);
        }else{
        			req.getRequestDispatcher("/WEB-INF/front/login.jsp").forward(request, response); 
        		}
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
