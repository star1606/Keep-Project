package com.cos.keep.controller;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.keep.action.Action;
import com.cos.keep.action.kakao.KakaoCallbackAction;




// http://localhost:8000/blog/oauth/kakao�� ���� �������� �����Ѵ� !!!!

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
		// DML�� dopost
		doProcess(request, response);
	}
	
	//doProcess�� �޼ҵ� �����ֱ�
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// DML�� dopost
		// http://localhost:8000/blog/user?cmd=join
		
		String cmd = request.getParameter("cmd");  // cmd�� �ݹ��� ���´�.
		System.out.println(TAG + "doProcess: " + cmd);
		Action action = router(cmd);
			action.execute(request, response);
		
				
		
	}
	
	public Action router(String cmd) {
		if(cmd.equals("callback")) {
			//ȸ������ �������� �̵�
			return new KakaoCallbackAction();  // Ȩ�׼��� ���� ������ ����� �� �Ѹ���.
		
		}
		return null;
	}
	
	

}
