package com.project.picturact.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Interceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		System.out.println("1");
		try {
			System.out.println("2");
			//session is null
			if(request.getSession().getAttribute("userId") == null ){
				System.out.println("3");
					// redirect -> loginPage.jsp
					response.sendRedirect("/loginPage.login");
					System.out.println("4");
					return false;
			}
		} catch (Exception e) {
			System.out.println("5");
			e.printStackTrace();
		}
		//session is not null
		System.out.println("6");
//		response.sendRedirect("/");
		return true;
	}

//	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
//			ModelAndView modelAndView) throws Exception {
//		System.out.println("postHandle");
//	}
//
//	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
//			throws Exception {
//		System.out.println("afterCompletion");
//	}

}