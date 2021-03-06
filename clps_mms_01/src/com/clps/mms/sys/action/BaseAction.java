
/**
 * Project Name:clps_mms_copyright_201610
 * File Name:BaseAction.java
 * Package Name:com.clps.mms.sys.action
 * Date:2016年11月29日下午3:44:08
 * Copyright (c) 2016, tmbasama@163.com All Rights Reserved.
 *
 */
package com.clps.mms.sys.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;

/**
 * ClassName: BaseAction. Function: TODO ADD FUNCTION. Reason: TODO ADD
 * REASON(可选). date: 2016年11月29日 下午3:44:08
 *
 * @author tony.tan
 * @version
 * 
 */
public class BaseAction extends ActionSupport
		implements RequestAware, SessionAware, ApplicationAware, ServletResponseAware, ServletRequestAware {
	/**
	 * serialVersionUID:TODO(用一句话描述这个变量表示什么).
	 *
	 */
	private static final long serialVersionUID = -5148360329185588967L;
	//protected Logger log = Logger.getLogger(getName());
	protected Map<String, Object> application;
	protected Map<String, Object> session;
	protected Map<String, Object> request;
	protected HttpServletRequest httpRequest;
	protected HttpServletResponse httpResponse;

	/*protected String getName() {
		return getClass().getName();
	}*/

	@Override
	public void setApplication(Map<String, Object> application) {
		this.application = application;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}

	@Override
	public void setServletRequest(HttpServletRequest httpRequest) {
		this.httpRequest = httpRequest;
	}

	@Override
	public void setServletResponse(HttpServletResponse httpResponse) {
		this.httpResponse = httpResponse;
	}

	public HttpServletRequest getHttpRequest() {
		return httpRequest;
	}

	public HttpServletResponse getHttpResponse() {
		return httpResponse;
	}

	public Map<String, Object> getApplication() {
		return application;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public Map<String, Object> getRequest() {
		return request;
	}

}
