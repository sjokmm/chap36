<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-Control" content="no-store">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href ="favicon.png">
<link rel="stylesheet" href="webjars/bootstrap/css/bootstrap.min.css">
<script src="webjars/bootstrap/js/bootstrap.min.js"></script>
<script src="webjars/jquery/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>join.jsp</title>
</head>
<body>
<h1>회원가입</h1> 
<hr>
<section class="container">
	<form action="/user/join" method="post">
		<div class="mb-3">
			<label class="form-lable mb-2" for="id">id<span>*</span></label>
			<input class="form-control" type="text" id="id" name="id" placeholder="아이디를 입력하세요." value="${user.id}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="password">password<span>*</span></label>
			<input class="form-control"   type="password" id="password"  name="pw"  placeholder="비밀번호를 입력하세요." value="${user.password}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="role">role</label>
			<input class="form-control"   id="role" value="${user.role}" disabled="disabled"/>
		</div>
		<button type="submit" class="btn btn-primary" >가입하기</button>
	</form>	
</section>
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
</body>
</html>