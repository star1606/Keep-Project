package com.cos.keep.action.kakao;



import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.keep.action.Action;
import com.cos.keep.dto.KakaoProfile;
import com.cos.keep.model.OAuthToken;
import com.cos.keep.model.Person;
import com.cos.keep.repository.PersonRepository;
import com.cos.keep.util.Script;
import com.google.gson.Gson;



public class KakaoCallbackAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code = request.getParameter("code");
		
		// POST��û, x-www-form-urlencoded
		String endpoint = "https://kauth.kakao.com/oauth/token";
		URL url = new URL(endpoint);
		
		String bodyData="";
		bodyData += "grant_type=authorization_code&";
		bodyData += "client_id=69df22722bf186a619e27a21cba0f9fa&";
		bodyData += "redirect_uri=http://localhost:8000/keep/oauth/kakao?cmd=callback&";
		bodyData += "code="+code;
		
		// Stream ����
		HttpsURLConnection conn = (HttpsURLConnection)url.openConnection();
		// http header �� �ֱ�
		conn.setRequestMethod("POST");
		conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
		conn.setDoOutput(true);
		// request �ϱ�
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream(), "UTF-8"));
		bw.write(bodyData);
		bw.flush();
		
		BufferedReader br = new BufferedReader(
				new InputStreamReader(conn.getInputStream(), "UTF-8"));
		String input = "";
		StringBuilder sb = new StringBuilder();
		while((input = br.readLine()) != null) {
			sb.append(input);
		}
		System.out.println(sb.toString());
		// Gson���� �Ľ�
		Gson gson = new Gson();
		OAuthToken oAuthToken = 
				gson.fromJson(sb.toString(), OAuthToken.class);
		
		
		
		
		// Profile �ޱ� (Resource Server)
		String endpoint2 = "https://kapi.kakao.com/v2/user/me";
		URL url2 = new URL(endpoint2);
		
		HttpsURLConnection conn2 = (HttpsURLConnection)url2.openConnection();
		// http header �� �ֱ�
		conn2.setRequestProperty("Authorization", "Bearer "+oAuthToken.getAccess_token());
		conn2.setDoOutput(true);
		// request �ϱ�
		BufferedReader br2 = new BufferedReader(
				new InputStreamReader(conn2.getInputStream(), "UTF-8"));
		String input2 = "";
		StringBuilder sb2 = new StringBuilder();
		while((input2 = br2.readLine()) != null) {
			sb2.append(input2);
		}
		System.out.println(sb2.toString());
		// Gson���� �Ľ�
		Gson gson2 = new Gson();
		KakaoProfile kakaoProfile = 
				gson2.fromJson(sb2.toString(), KakaoProfile.class);
		
		// ȸ�� ���ԵǾ��ִ��� Ȯ��
		PersonRepository personRepository = 
				PersonRepository.getInstance();
//		Person principal = personRepository.findByEmail(kakaoProfile.getId()+".kakao");
		Person principal = personRepository.findByEmail(kakaoProfile.getKakao_account().getEmail() + ".kakao");
		
		HttpSession session = request.getSession();
		
		if(principal != null) { // ����ȸ���̸� �׳� ���� �ְ� �α��� ����
			session.setAttribute("principal", principal);
			Script.href("īī�� �α��� �Ϸ�", "/keep/index.jsp", response);
		}else { // ����ȸ���� �ƴϸ� ȸ������ �� �α��� ����
			// email ���� ������ �߰� ȸ������ ������ �̵�
			if(kakaoProfile.getKakao_account().getEmail() == null ||
					kakaoProfile.getKakao_account().getEmail().equals("")) {
				request.setAttribute("kakaoProfile", kakaoProfile);
				RequestDispatcher dis = 
						request.getRequestDispatcher("/person/oauthJoin.jsp");
				dis.forward(request, response);
			}else { // email ���� ������ �ٷ� ȸ������ �� �α��� ����
				//String username = kakaoProfile.getId();
				//username += "_kakao";
			//	String email = kakaoProfile.getKakao_account().getEmail();
			//	email += "_kakao"; 
				String email = kakaoProfile.getKakao_account().getEmail();
				 email += ".kakao";
				Person person = Person.builder()
					//	.username(username)
						.email(email)
						.build();
				personRepository.save(person);
				session.setAttribute("principal", person);
					
				Script.href("īī�� ȸ������ �� �α��� �Ϸ�", "/keep/index.jsp", response);
			}
			
		}
		
		
	}
}