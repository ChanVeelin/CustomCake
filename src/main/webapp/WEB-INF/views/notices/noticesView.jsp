<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>  
  <article>
      <h2> 공지사항 </h2>
      <h3> ${noticesVO.title}</h3>    
    <form name="formm" method="post">
    <table id="notice">
      <tr>
        <th>등록일</th>
        <td> <fmt:formatDate value="${noticesVO.notices_date}" type="date"/></td>
      </tr>
      <td>등록자</td> <td>${noticesVO.id}</td> <td>조회수</td> <td>${noticesVO.hits}</td>
      <hr>
      <tr>
        <td>${noticesVO.content}</td>
      </tr>
    </table>
    <div class="clear"></div>
     <div id="buttons" style="float:right">
      <input type="button"  value="목록보기"   class="submit"  onclick="location.href='notices_list'">  
		<c:if test="${sessionScope.loginUser.admin == 'admin'}">
		<input type="button"  value="수정하기"   class="submit"  onclick="location.href='notices_update_form?notices_no='+${noticesVO.notices_no}">  
		</c:if>
      
      </div>
    </form>
  </article>
<%@ include file="../footer.jsp" %>
