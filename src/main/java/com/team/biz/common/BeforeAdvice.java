package com.team.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Service;

@Aspect
@Service
public class BeforeAdvice {
	@Before("PointcutCommon.allPointcut()")
	public void beforeLog(JoinPoint jp) {
		Signature sig=jp.getSignature();
		String method=sig.getName();//메소드명
		Object[] args=jp.getArgs();//입력된 파라메터값
		
		if(args.length==0) {
			System.out.printf("[사전처리] 메소드명 : %s(), 매개변수 없음\n", method);
		}else {
			System.out.printf("[사전처리] 메소드명 : %s(), 매개변수 : %s\n", method, args[0].toString());
		}
	}
}
