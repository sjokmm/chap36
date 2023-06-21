<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-Control" content="no-store">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/favicon.png">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Alata&family=Arsenal:ital,wght@1,700&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> 
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/0531e5b215.js" crossorigin="anonymous"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/static/css/home.css" type="text/css">
<title>Son's</title>
</head>
<body>
<!-- Header -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark container-fluid" id="bar" >
  <div class="container-fluid" style="width: 80%">
    <a class="navbar-brand" href="/" id="logo">Son's</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-between" id="navbarNavDarkDropdown">
      <ul class="navbar-nav">
        <li class="nav-item dropdown" id="list">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="hov">
            Company
          </a>
          <ul class="dropdown-menu dropdown-menu-dark">
            <li><a class="dropdown-item" href="dept/list">Department List</a></li>
            <li><a class="dropdown-item" href="emp/list">Employee List</a></li>
            <li><a class="dropdown-item" href="salgrade/list">Salary Grade</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="hov">
            World
          </a>
          <ul class="dropdown-menu dropdown-menu-dark">
            <li><a class="dropdown-item" href="country/page/1/10">Country List</a></li>
            <li><a class="dropdown-item" href="city/page/1/10">City List</a></li>
            <li><a class="dropdown-item" href="language/page/1/10">Language List</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="hov">
            Information
          </a>
          <ul class="dropdown-menu dropdown-menu-dark">
            <li><a class="dropdown-item" href="#">Gallery</a></li>
            <li><a class="dropdown-item" href="#">Bulletin Board</a></li>
          </ul>
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
<div id="demo" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/static/images/home.jpg" alt="" class="d-block w-100">
	 	<div class="carousel-caption" id="imgtext">
	 		<p class="t1">Welcome To My Page</p>
	 		<p class="t2">IT'S NICE TO MEET YOU</p>
		</div>
    </div>
    <div class="carousel-item">
      <img src="/static/images/home2.jpg" alt="" class="d-block w-100">
      	<div class="carousel-caption" id="imgtext">
	 		<p class="t1" style="color: white">Welcome To My Page</p>
	 		<p class="t2" style="color: white">IT'S NICE TO MEET YOU</p>
		</div>
    </div> 
    <div class="carousel-item">
      <img src="/static/images/home4.jpg" alt="" class="d-block w-100">
      	<div class="carousel-caption" id="imgtext">
	 		<p class="t1" style="color: white">Welcome To My Page</p>
	 		<p class="t2" style="color: white">IT'S NICE TO MEET YOU</p>
		</div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>

<div class="hr">
 <div class="divider div-transparent div-dot"></div>
</div>	


<div class="container" id="bottom" style="width: 80%">
	<div class="row">
		<div class="col-md-4">
			<h4 style="font-family:'Arsenal', sans-serif">Department</h4>
			<p>This area is created to check department information, click to move to dept/list.</p>
			<p><a class="btn btn-outline-dark" href="dept/list">Learn More</a></p>
		</div>
		<div class="col-md-4">
			<h4 style="font-family:'Arsenal', sans-serif">Employee</h4>
			<p>This area is created to check employee information, click to move to emp/list.</p>
			<p><a class="btn btn-outline-dark" href="emp/list">Learn More</a></p>
		</div>
		<div class="col-md-4">
			<h4 style="font-family:'Arsenal', sans-serif">Salary Grade</h4>
			<p>This area is created to check salary grade information, click to move to salgrade/list.</p>
			<p><a class="btn btn-outline-dark" href="salgrade/list">Learn More</a></p>
		</div>
	</div>
</div>

<div class="hr">
 <div class="divider div-transparent div-dot"></div>
</div>	

<div class="container text-center pb-3">
	<div class="row">
		<div class="col-lg-4" id="frame">
			<a href="country/page/1/10" class="banner_img">
			  <img src="/static/images/home_count.jpg" alt="" id="img">
			  <p class="hover_text">Country</p>
			</a>
		</div>
		
		<div class="col-lg-4" id="frame">
			<a href="city/page/1/10" class="banner_img">
			  <img src="/static/images/home_city.jpg" alt="" id="img">
			  <p class="hover_text">City</p>
			</a>
		</div>
		
		<div class="col-lg-4" id="frame">
			<a href="language/page/1/10" class="banner_img">
			  <img src="/static/images/home_lang.jpg" alt="" id="img">
			  <p class="hover_text">Language</p>
			</a>
		</div>
	</div>
</div>
<!-- Footer -->
<div class="container-fluid text-center bg-dark text-white p-4 mt-5" >
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