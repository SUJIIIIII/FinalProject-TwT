package com.fp.twt.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class Interceptor implements HandlerInterceptor{
	private Logger logger = LoggerFactory.getLogger(Interceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//contoller로 요청이 넘어가기 전에 요청을 가로채는 것
		// return --> true : controller실행, false : controller 실행안됨
		logger.info("[interceptor] : preHandel 실행");
		
		if(request.getRequestURI().contains("/loginform.do") || request.getRequestURI().contains("/ajaxlogin.do") ||
			request.getRequestURI().contains("/test.do")) {
			return true;
		}
		
		if(request.getSession().getAttribute("login") == null) {
			response.sendRedirect("loginform.do");
			return false;
		}
		
		if(request.getSession().getAttribute("login") != null) {
			return true;
		}
		
		return false;
	}
	
	//view로 forward되기전에 실행
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		logger.info("[interceptor] : postHandle");
	}
	
	//view까지 처리가 끝난후 실행
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		logger.info("[interceptor] : afterCompletion");
	}

}
