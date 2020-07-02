<%@ page import="com.cos.keep.model.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<style>
 	dropdown-menu{
 	 right: 0; left: auto;}
</style>



</head>


<body>


<div class="container mt-3">
                                          
  <div class="dropdown justify-content-end">
    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
     
			<img style="border-radius: 15px" onerror="this.src='/keep/static/image/userProfile.png'"
				src="${sessionScope.principal.userProfile }" width="30px" height="30px" />
		
    </button>
    <div class="dropdown-menu dropdown-menu-left">
      <a class="dropdown-item" href="/keep/person?cmd=update">회원정보 수정</a>
      <a class="dropdown-item" href="/keep/person?cmd=profileUpload">사진 수정</a>
      <a class="dropdown-item" href="/keep/person?cmd=logout">로그아웃</a>
    </div>
  </div>
</div>

</body>
</html>
