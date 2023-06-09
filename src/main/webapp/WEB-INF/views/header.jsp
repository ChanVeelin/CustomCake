<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문제작</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-icons/bootstrap-icons.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="member/member.js"></script>
<script type="text/javascript" src= "member/postcode.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
<nav class="border-bottom navbar navbar-expand-md bg-white navbar-light sticky-top">

	<a class="navbar-brand" href="index">
		<img src="images/default.jpg" style="white:30px; height:30px;">
	</a>
	<div class="collapse navbar-collapse" id="navbarText">
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link" href="index">홈</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="">추가할메뉴</a>
			</li>
		</ul>
	</div>
	<!-- 통합 검색창 -->
	<form name="total-search" class="form-inline ml-auto" action="total_search" method="GET">
		<label for="search_bar" class="bi bi-search" style="position: relative; z-index: 10; left: 23px;"> </label>
		<div class="input-group flex-nowrap">
			<input id="search_bar" class="form-control mr-sm-2 pl-4" type="search" name="target" placeholder="통합검색" aria-label="Search" value="" required="">
			<button type="submit" class="d-none"></button>
		</div>
	</form>
	<c:choose>
       <c:when test="${empty sessionScope.loginUser}">
	<ul class="navbar-nav">
		<li class="nav-item">
					<a class="nav-link" href="login_form">로그인</a>
				</li>
				</c:when>
				       <c:otherwise>
       <li style="color:orange">
         ${sessionScope.loginUser.name}(${sessionScope.loginUser.id})
       </li>
       <li><a href="logout">LOGOUT</a></li>
				<li class="nav-item">
					<a class="nav-link" href="join">회원가입</a>
				</li>
       </c:otherwise> 
         </c:choose>
			</ul>
	<ul class="navbar-nav">
		<!-- 채팅 알림 -->
		<li class="nav-item">
			<a class="nav-link" href="">
				<h5 class="bi bi-chat-dots my-0"></h5>
			</a>
		</li>

		<!-- 내 프로필 -->
		<li class="nav-item">
			<a class="nav-link" href="">
				<h5 class="bi bi-person-circle my-0"></h5>
			</a>
		</li>
	</ul>
	<div class="dropdown">
		<button type="button" class="btn btn-secondary dropdown-toggle" 
			type="button" data-bs-toggle="dropdown" aria-expanded="false">눌러보셈
		</button>
		<div class="dropdown-menu">
			<a class="dropdown-item" href="#">물건 등록</a>
			<a class="dropdown-item" href="#">추가할종류들</a>
		</div>
	</div>
</nav>

**나중에 지우기**여기까지가 헤더임 --------------- 

