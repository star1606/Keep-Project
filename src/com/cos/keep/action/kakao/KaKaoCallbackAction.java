package com.cos.keep.action.kakao;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.keep.action.Action;
import com.cos.keep.util.Script;



public class KakaoCallbackAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String code = request.getParameter("code");
			
			System.out.println(code);
			Script.outText(code, response); // printwriter�� ��°�.
			//html�� ���� ���⼭ �ٷ� ��û�ϰ� �����Ѵ�.
	}
}
