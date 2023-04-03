<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %> 
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">



  <article>
    <h2> 공지사항 </h2>
    <form name="formm" method="post">
      <table id="noticesList">
      <tr>
        <th>번호</th> <th>제목</th> <th>등록자</th> <th>등록일</th> <th>조회수</th>    
      </tr>
      <c:forEach items="${noticesList}"  var="noticesVO">
      <tr>  
        <td> ${noticesVO.notices_no} </td>    
        <td> <a href="notices_view?notices_no=${noticesVO.notices_no}"> ${noticesVO.title} </td>      
        <td> <fmt:formatDate value="${noticesVO.notices_date}" type="date"/></td>
        <td>${noticesVO.id}</td>
        <td>${noticesVO.hits}</td>    
      </tr>
      </c:forEach>    
      </table>
      <c:if test="${sessionScope.loginUser.admin == 'admin'}">
		<div class="clear"></div>
     	 <div id="buttons" style="float:right">
       	<input type="button"  value="공지사항 작성하기"  class="submit"    
			onclick="location.href='notices_write_form'">  <!-- 컨트롤러로 보내기 -->
 	  </c:if>
      </div>
    </form>
  </article>
<%@ include file="../footer.jsp" %>












