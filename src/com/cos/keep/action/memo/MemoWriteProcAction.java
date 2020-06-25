package com.cos.keep.action.memo;

import java.io.BufferedReader;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.keep.action.Action;
import com.cos.keep.model.Memo;
import com.cos.keep.repository.MemoRepository;
import com.google.gson.Gson;


public class MemoWriteProcAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		BufferedReader br = request.getReader();
		StringBuffer sb = new StringBuffer();
		String input = null;
		
		while((input = br.readLine()) != null) {
			sb.append(input);
		}
		
		System.out.println(sb.toString());
		Gson gson = new Gson();
		Memo memo = gson.fromJson(sb.toString(), Memo.class);
		
		MemoRepository memoRepository =
				MemoRepository.getInstance();
		
		int result = memoRepository.save(memo);
		System.out.println(result);
		
		if(result == 1) {
			List<Memo> memos = memoRepository.findAll(memo.getPersonId());
			String memosJson = gson.toJson(memos);
			
			// 스크립트 부분하기
		} else {
			
		}
	}

	
	
	
}
