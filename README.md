## Keep 프로젝트
> JSP memo, todolist project
> 메모와 Todolist 서비스 제공
</br>




테이블
-------
```
CREATE TABLE person(
	id number primary key,  
    email varchar2(100) not null,
    personName varchar2(100) not null unique,
    password varchar2(100) not null,
    userProfile varchar2(200),
    createDate timestamp
) ;

CREATE TABLE reminder(
	id number primary key,
    personId number,
    title varchar2(100),
    content clob not null, 
    priority number default 0,
    createDate timestamp,
    foreign key (personId) references person (id)
);

CREATE TABLE memo(
	id number primary key,
    personId number,
    title varchar2(100),
    content clob not null, 
    priority number default 0,
    createDate timestamp,
    foreign key (personId) references person (id)
);

```




로그인 화면
---------
![Screenshot_20](https://user-images.githubusercontent.com/59248999/88126991-ad28e100-cc0d-11ea-8bb1-58fd4fdcc3ae.png)

-자바스크립트 이메일 양식확인<br>
-쿠키로 이메일 기억하기 기능<br>
-카카오 로그인 OAuth 2.0 기술<br>


회원가입 화면
-----------
![join](https://user-images.githubusercontent.com/59248999/87901649-901bd300-ca92-11ea-91ae-acc816e66c3a.png)

-패스워드가 일치하지 않으면 경고창이 뜨는 Bootstrap validation 추가 <br>
-이메일 중복확인 <br>
-회원가입시 password는 해쉬화(SHA-256)되서 데이터에 저장 <br>
<br>




회원수정 화면
-----------
![infoupdate](https://user-images.githubusercontent.com/59248999/87901671-9e69ef00-ca92-11ea-963f-cc3c36cafb9b.png)
<br>
-Email은 변경하지 못함(read only)<br>


메인 화면 -Memo
-----------
![Screenshot_10](https://user-images.githubusercontent.com/59248999/88127051-caf64600-cc0d-11ea-987a-9a7c371fbedd.png)
-검색 기능 <br>
-hover 사용: 마우스 올리면 삭제아이콘, 수정버튼뜸 <br>
AJAX 기술 사용 : 1.메모추가, 2.메모삭제, 3.메모 수정, 4.메모 우선순위 <br>
체크 아이콘을 클릭하면 체크 아이콘이 빨간색으로 되면서 우선순위로 상단에 올라간다. <br> 



Todolist 화면
------------
![todolist](https://user-images.githubusercontent.com/59248999/87901682-a2960c80-ca92-11ea-959a-3a217cc0452f.png)

-검색 기능 <br>
-AJAX 기술 : 1.Todolist 추가, 2.Todolist 삭제, 3.Todolist 완료 <br>
-체크박스 누르면 줄그인다 <br>

<br>


프로필 사진 업로드 화면
----------
![profileupload](https://user-images.githubusercontent.com/59248999/87901678-a164df80-ca92-11ea-98c6-19c2f327fed0.png)
-이미지 파일 업로드해서 프로필에 저장(cos 라이브러리 사용)
<br>







> 시연 동영상 : ➡️ [링크](https://www.youtube.com/watch?v=oulEecwtBwM)

