## Keep 프로젝트
> JSP memo, todolist project
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

-자바스크립트 이메일 양식확인
-쿠키로 이메일 기억하기 기능
-카카오 로그인 OAuth 2.0 기술


회원가입 화면
-----------
![join](https://user-images.githubusercontent.com/59248999/87901649-901bd300-ca92-11ea-91ae-acc816e66c3a.png)
<br>


회원수정 화면
-----------
![infoupdate](https://user-images.githubusercontent.com/59248999/87901671-9e69ef00-ca92-11ea-963f-cc3c36cafb9b.png)
<br>


메인 화면 -Memo
-----------
![main](https://user-images.githubusercontent.com/59248999/87901675-a033b280-ca92-11ea-9c81-24a4a3a9e37e.png)
<br>


프로필 사진 업로드 화면
----------
![profileupload](https://user-images.githubusercontent.com/59248999/87901678-a164df80-ca92-11ea-98c6-19c2f327fed0.png)
<br>

Todolist 화면
------------
![todolist](https://user-images.githubusercontent.com/59248999/87901682-a2960c80-ca92-11ea-959a-3a217cc0452f.png)


로그인화면



![Screenshot_10](https://user-images.githubusercontent.com/59248999/88127051-caf64600-cc0d-11ea-987a-9a7c371fbedd.png)




![Screenshot_34](https://user-images.githubusercontent.com/59248999/88127087-dba6bc00-cc0d-11ea-8db9-fbaa5034091d.png)



![Screenshot_54](https://user-images.githubusercontent.com/59248999/88127141-f5480380-cc0d-11ea-9abd-71e21b4531de.png)



> 시연 동영상 : ➡️ [링크](https://www.youtube.com/watch?v=oulEecwtBwM)

