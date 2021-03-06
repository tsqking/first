/**
 * Project Name:campus_community
 * File Name:MainFilter.java
 * Package Name:com.clps.web.filter
 * Date:2017年3月22日下午12:51:51
 * Copyright (c) 2017, tsqking@163.com All Rights Reserved.
 *
*/

package com.clps.web.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import com.clps.common.bean.UserInfo;

/**
 * ClassName:MainFilter <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason: TODO ADD REASON. <br/>
 * Date: 2017年3月22日 下午12:51:51 <br/>
 * 
 * @author Charles
 * @version
 * @since JDK 1.8
 * @see
 */
public class MainFilter implements Filter {
	Logger log = Logger.getRootLogger();

	public void init(FilterConfig arg0) throws ServletException {
		this.log.info("过滤器初始化...");
	}

	public void destroy() {
		this.log.info("过滤器销毁...");
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		UserInfo userinfo = (UserInfo) session.getAttribute("userinfo");
		if (userinfo != null) {
			filterChain.doFilter(request, response);
		} else {
			req.setAttribute("msg", "请在登录后操作");
			filterChain.doFilter(request, response);
		}
	}
}