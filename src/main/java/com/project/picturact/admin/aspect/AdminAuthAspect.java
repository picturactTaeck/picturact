package com.project.picturact.admin.aspect;

import javax.inject.Named;
import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

@Named
@Aspect
public class AdminAuthAspect {
	@Pointcut("execution(* com.project.picturact.admin.controller.*Controller.*write(..))")
	public void adminCheck(){}
	
	@Before("adminCheck()")
	public Object writeCheck(ProceedingJoinPoint pjt) throws Throwable{
		//Check id in session and admin id only uses writeForm of notice kk
		
		HttpServletRequest req =null;
		Object result = null;
		
		for(Object obj:pjt.getArgs()){
			if(obj instanceof HttpServletRequest){
				
				req =(HttpServletRequest)obj;
				
				String auth = (String) req.getAttribute("admin");
				if(auth == "Y"){
					result=pjt.proceed();
				}
			}
		}
		
		
		return result;
		
	}

}
