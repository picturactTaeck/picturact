package com.project.picturact.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Interceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		try {
			if(request.getSession().getAttribute("userId") == null ){
					response.sendRedirect("/loginPage.member");
					return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;
	}

}







