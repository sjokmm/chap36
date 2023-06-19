<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat+Alternates&display=swap" rel="stylesheet">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/jquery.min.js"></script>
<style type="text/css">
body{
font-family: 'Montserrat Alternates', sans-serif;
}
#tit{
 	border-radius: 5em; 
 	padding: 0.5em; 
 	background: #585fa0;
 	margin: 15px;
 	text-align: center;
 	color:white;
}
section{
	position: relative;
	top:80px;
}
#home{
	border: 5px solid white;
	border-radius: 5em;
	padding: 8px 20px;
	text-decoration: none;
	color:black;
	transition: all 0.5s 0.2s;
	position: absolute;
	left:25px;
	top:24px;
	color:white;
}
#pg{
	border: 5px solid white;
	border-radius: 5em;
	padding: 8px 20px;
	text-decoration: none;
	color:black;
	transition: all 0.5s 0.2s;
	position: absolute;
	right:25px;
	top:24px;
	color:white;
}
#home:hover {
	background-color:  #7d3666;
	color:white;
	 transition: all 0.5s 0.2s;
}
hr{
	 height: 2px;
 	 margin: 15px;
 	 border: 2px solid #585fa0;
}
#pnum{
	position: relative;
	top:150px;
}
</style>
<title>page.jsp</title>
</head>
<body>
<h1 id="tit">Language Page<span><a href="/" id="home">Home</a><span id="pg">${paging.pageNum}</span></span></h1>
<hr>
<section class="container table-responsive">
	
	
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr class="table-warning">
				<th>countryCode</th>
				<th>language</th>
				<th>isOfficial</th>
				<th>percentage</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="e" items="${list}">
				<tr>
					<td>${e.countryCode}</td>
					<td>${e.language}</td>
					<td>${e.isOfficial}</td>
					<td>${e.percentage}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</section>
	<ul class="pagination pagination-lg pagination justify-content-center" id="pnum">
		<li class="page-item"><a class="page-link" href="/language/page/${paging.navigateFirstPage-1}/${paging.pageSize}">Previous</a></li>
		<c:forEach var="n" items="${paging.navigatepageNums}">
			<c:choose>
				<c:when test="${n eq paging.pageNum}">
					<li class="page-item active"><a class="page-link" href="/language/page/${n}/${paging.pageSize}" class="text-white">${n}</a></li>
				</c:when>
				<c:when test="${n ne paging.pageNum}">
					<li class="page-item       "><a class="page-link" href="/language/page/${n}/${paging.pageSize}">${n}</a></li>
				</c:when>
			</c:choose>
		</c:forEach>
		<li class="page-item"><a class="page-link" href="/language/page/${paging.navigateLastPage+1}/${paging.pageSize}">Next</a></li>
	</ul>
</body>
</html>