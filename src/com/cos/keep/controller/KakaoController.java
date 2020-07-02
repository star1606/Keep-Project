package com.cos.keep.controller;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.keep.action.Action;
import com.cos.keep.action.kakao.KakaoCallbackAction;




// http://localhost:8000/blog/oauth/kakao로 오면 이쪽으로 도달한다 !!!!

@WebServlet("/oauth/kakao")
public class KakaoController extends HttpServlet {
	private final static String TAG = "KakaoController: ";
	private static final long serialVersionUID = 1L;
       
   
    public KakaoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// select doGet
		doProcess(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// DML은 dopost
		doProcess(request, response);
	}
	
	//doProcess로 메소드 몰아주기
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// DML은 dopost
		// http://localhost:8000/blog/user?cmd=join
		
		String cmd = request.getParameter("cmd");  // cmd에 콜백이 들어온다.
		System.out.println(TAG + "doProcess: " + cmd);
		Action action = router(cmd);
			action.execute(request, response);
		
				
		
	}
	
	public Action router(String cmd) {
		if(cmd.equals("callback")) {
			//회원가입 페이지로 이동
			return new KakaoCallbackAction();  // 홈액션의 목적 보드의 목록을 다 뿌린다.
		
		}
		return null;
	}
	
	

}
