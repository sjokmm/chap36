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
<link rel="stylesheet" href="/static/css/table.css" type="text/css">

<title>Son's : 사원 추가</title>
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

<div class="container-fluid p-5 bg-secondary text-white text-center" id="title">
  <h4>| Son's Company |</h4>
  <h1>Add Department</h1>
</div>
<section class="container">
	<form action="/emp/create" method="post" id="input">
		<div class="mb-3">
			<label class="form-lable mb-2" for="empno">직원번호<span>*</span></label>
			<input class="form-control"    id="empno" name="empno"   placeholder="직원번호를 입력하세요" value="${emp.empno}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="ename">성명<span>*</span></label>
			<input class="form-control"    id="ename"  name="ename"  placeholder="직원이름를 입력하세요" value="${emp.ename}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="gender">성별</label>
			<input class="form-control"    id="gender" name="gender" placeholder="성별을 입력하세요( M / F )" value="${emp.gender}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="job">직책</label>
			<input class="form-control"    id="job"    name="job"    placeholder="직책을 입력하세요" value="${emp.job}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="mgr">직속상사</label>
			<input class="form-control"    id="mgr"    name="mgr" 	 placeholder="직속상사 직원번호를 입력하세요" value="${emp.mgr}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="hiredate">입사일</label>
			<input class="form-control"    id="hiredate" name="hiredate" placeholder="입사일을 입력하세요 ( 2001-01-01 )" value="${emp.hiredate}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="sal">급여</label>
			<input class="form-control"    id="sal" name="sal" 		 placeholder="급여를 입력하세요" value="${emp.sal}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="comm">커미션</label>
			<input class="form-control"    id="comm" name="comm" 	 placeholder="커미션을 입력하세요" value="${emp.comm}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="deptno">부서번호</label>
			<input class="form-control"    id="deptno" name="deptno" placeholder="부서번호를 입력하세요" value="${emp.deptno}"/>
		</div>
		<button type="submit" class="btn btn-secondary" id="btn">추가</button>
	</form>
	<div class="container text-danger text-center">
		<c:if test="${binding.hasErrors()}">
		<h2>Error Massage</h2>
		<hr>
		<c:forEach var="g" items="${binding.globalErrors}">
			<div>${g.code} ${g.defaultMessage}</div>
		</c:forEach>
		<hr>
		<c:forEach var="f" items="${binding.fieldErrors}">
			<div>${f.field} ${f.defaultMessage}</div>
		</c:forEach>
		</c:if>
	</div>
	</div>	
</section>
<!-- Footer -->
<div class="container-fluid text-center bg-dark text-white p-4 mt-5" id="footer">
	<div class="container-fluid" style="width: 80%">
	<div class="row justify-content-between">
	<div class="col-md-12">
		<p>© Copyright 2023 Son's  | Designed by SangSuSon | Images:Unsplash</p>
	</div>
	<div class="col-md-12">
		<a href="https://www.instagram.com/" id="icon"><i class="fa-brands fa-instagram fa-2x"></i></a>
		<a href="https://twitter.com/" id="icon"><i class="fa-brands fa-twitter fa-2x"></i></a>
		<a href="https://ko-kr.facebook.com/" id="icon"><i class="fa-brands fa-facebook fa-2x"></i></a>
	</div>
	</div>
	</div>
</div>
</body>
</html>