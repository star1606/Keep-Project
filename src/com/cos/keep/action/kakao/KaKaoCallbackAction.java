package com.cos.blog.action.kakao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.blog.action.Action;
import com.cos.blog.util.Script;

public class KaKaoCallbackAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String code = request.getParameter("code");
			
			System.out.println(code);
			Script.outText(code, response); // printwriter로 쏘는것.
			//html안 가고 여기서 바로 요청하고 응답한다.
	}
}
