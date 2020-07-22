## Keep 프로젝트
> JSP memo, todolist project
</br>




테이블

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
![login](https://user-images.githubusercontent.com/59248999/87846004-9a5d9600-c907-11ea-8027-edde6d5014e3.png)
<br>


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





