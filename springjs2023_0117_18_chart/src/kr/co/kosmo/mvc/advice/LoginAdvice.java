package kr.co.kosmo.mvc.advice;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.condition.RequestConditionHolder;

import kr.co.kosmo.mvc.dao.MemberDaoInter;
import kr.co.kosmo.mvc.vo.MyLoginLoggerDTO;

@Component
@Aspect
public class LoginAdvice {
	private String userAgent;

	@Autowired
	private MemberDaoInter memberList;

	@Around("execution(* kr.co.kosmo.mvc.controller.login.LoginCheckController.loginf*(..))")
	public ModelAndView loginLogger(ProceedingJoinPoint jp) {
		System.out.println("loginLogger ����!");
		ModelAndView rpath = null;

		//step1) �޼����� �̸��� �����ͼ� �α��ΰ� �α׾ƿ� ����
		String methodName = jp.getSignature().getName();
		System.out.println("methodName : " + methodName);
		
		//step2) JoinPoint�κ��� Ÿ�� ��ü�� �޼��� ���ڰ� �޾ƿ���
		Object[] fd = jp.getArgs();
		for (Object e : fd) {
			System.out.println(e.getClass().getName());
		}
		if(methodName.equals("loginfProcess")) { //�α���
			//��ó�� ����
			try {
				rpath = (ModelAndView) jp.proceed(); //�α��� �޼��� ȣ��
			} catch (Throwable e) {

				e.printStackTrace();
			}
			//=====================================================================
			//�޾ƿ;��� �� : ����id,request reip,DTO,userAgent => loginfProcess�޼����� ���ڰ� => 4��
			//HttpSession session, HttpServletRequest request �迭�̶� �޼��帶�� ���ڰ� ���� �����ؾ���!
			//=====================================================================
			//1��° ���ڰ� : session => ���ǿ� ����ִ� id ���ϱ�
			HttpSession session = (HttpSession) fd[0];
			String uid = (String) session.getAttribute("sessionID");
			System.out.println("uid => "+uid);//ip ���
			//2��° ���ڰ� : request => ip ���ϱ�
			String reip = ((HttpServletRequest) (fd[1])).getRemoteAddr(); //ip ��� => �ش� �迭��ġ [0,1
			System.out.println("reip => "+reip);//ip ���
			//4��° ���ڰ� : userAgent => ����� ����̽� ���ϱ�
			userAgent = (String) fd[3]; //�޼��忡�� 4��° ���ڰ� => �迭��ġ[0,1,2,3]
			System.out.println("agent => "+userAgent);//����ڵ���̽� ���
			//=====================================================================
			//�α��� ���� DB�� ����
			MyLoginLoggerDTO vo = new MyLoginLoggerDTO();
			vo.setIdn(uid);
			vo.setStatus("login");
			vo.setReip(reip);
			vo.setUagent(userAgent);
			memberList.addLoginLogging(vo);
		}else if(methodName.equals("loginfoutProcess")) { //�α׾ƿ�
			//�޾ƿ;��� �� : ����,request => 2��
			//=====================================================================
			//1��° ���ڰ� : session => ���ǿ� ����ִ� id ���ϱ�
			HttpSession session = (HttpSession) fd[0];
			String uid = (String) session.getAttribute("sessionID");
			//2��° ���ڰ� : request => ip ���ϱ�
			String reip = ((HttpServletRequest) (fd[1])).getRemoteAddr(); //ip ��� => �ش� �迭��ġ [0,1
			//=====================================================================
			//�α׾ƿ� ���� DB�� ����
            MyLoginLoggerDTO vo = new MyLoginLoggerDTO();
            vo.setIdn(uid);
            vo.setStatus("logout");//�α׾ƿ�
            vo.setReip(reip);
            vo.setUagent(userAgent);
            memberList.addLoginLogging(vo);
            //=====================================================================
			//��ó�� ����
			try {
				rpath = (ModelAndView) jp.proceed(); //�α׾ƿ� �޼��� ȣ��
			} catch (Throwable e) {

				e.printStackTrace();
			}
		}
		System.out.println("����2");

		return rpath;
	}
}
