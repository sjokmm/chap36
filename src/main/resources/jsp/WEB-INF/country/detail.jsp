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

<title>Son's : 부서 목록</title>
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
  <h1>Country Details</h1>
</div>
<section class="container">
	<table class="type09">
		<thead>
			  <tr>
			    <th scope="cols">목록</th>
			    <th scope="cols">내용</th>
			  </tr>
  		</thead>
		<tbody>
				<tr><th>code</th>              <td>${country.code}</td></tr>              
				<tr><th>name</th>              <td>${country.name}</td></tr>              
				<tr><th>continent</th>         <td>${country.continent.symbol}</td></tr>  
				<tr><th>region</th>            <td>${country.region}</td></tr>            
				<tr><th>surfaceArea</th>       <td>${country.surfaceArea}</td></tr>       
				<tr><th>indepYear</th>         <td>${country.indepYear}</td></tr>         
				<tr><th>population</th>        <td>${country.population}</td></tr>        
				<tr><th>lifeExpectancy</th>    <td>${country.lifeExpectancy}</td></tr>    
				<tr><th>gnp</th>               <td>${country.gnp}</td></tr>               
				<tr><th>gnpOld</th>            <td>${country.gnpOld}</td></tr>            
				<tr><th>localName</th>         <td>${country.localName}</td></tr>         
				<tr><th>governmentForm</th>    <td>${country.governmentForm}</td></tr>    
				<tr><th>headOfState</th>       <td>${country.headOfState}</td></tr>       
				<tr><th>capital</th>           <td>${country.capital}</td></tr>           
				<tr><th>code2</th>             <td>${country.code2}</td></tr>             
		</tbody>
	</table>
	</div>
</section>
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