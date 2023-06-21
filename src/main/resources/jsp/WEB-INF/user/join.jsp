<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-Control" content="no-store">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/favicon.png">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/jquery.min.js"></script>
<link rel="stylesheet" href="/static/css/list.css" type="text/css">
<link href="https://fonts.googleapis.com/css2?family=Alata&family=Arsenal:ital,wght@1,700&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> 
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/0531e5b215.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/static/css/login.css" type="text/css">

<title>Son's : 회원가입</title>
</head>
<body>
<!-- Header -->
<div id="wrap">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark container-fluid" id="bar" >
  <div class="container-fluid" style="width: 80%">
    <a class="navbar-brand" href="/" id="logo">Son's</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-between" id="navbarNavDarkDropdown">
        <ul class="navbar-nav">
        	<li>
        		<a href="/"><i class="fa-solid fa-house fa-1x"></i></a>
        	</li>
        </ul>
        <ul class="navbar-nav" id="inf">
        <sec:authorize access="isAnonymous()">
                <li><a href="/user/login" class="nav-link" id="hov">Log In</a></li>
                <li><a href="/user/join" class="nav-link" id="hov">Sign Up</a></li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                <li id="user"><sec:authentication property="name"/>님 환영합니다</li>
                <li><a href="/user/logout" class="nav-link">Log Out</a></li>
                <li><a href="#" class="nav-link">Personal Information</a></li>
       </sec:authorize>
      </ul>
    </div>
  </div>
</nav>
<!-- Body -->
<form action="/user/join" method="post">
		<div class="wrap">
        <div class="login">
            <h2>Sign-up</h2>
            <div class="login_id">
                <h4>아이디</h4>
                <input class="form-control" name="username" placeholder="아이디를 입력하세요." value="${param.username}"/>
            </div>
            <div class="login_pw">
                <h4>비밀번호</h4>
                <input class="form-control" name="password" placeholder="비밀번호를 입력하세요." type="password" value="${param.password}"/>
            </div>
            <div class="submit">
                <input type="submit" value="가입하기">
            </div>
        </div>
    </div>
	</form>	
<div class="container-fluid p-3 bg-secondary text-white text-center" id="footer">
  <p style="font-family: 'Arsenal', sans-serif;">Welcome To My Web page, Log in to check your information!</p> 
</div>
</body>
</html>