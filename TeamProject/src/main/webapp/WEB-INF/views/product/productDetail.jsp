<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>  
<%@ include file="../header.jsp" %>
<%@ include file="sub_img.html" %>
<%@ include file="sub_menu.html" %>       
  <article>
    <h1> Item </h1>
    <div id="itemdetail" >
      <form  method="post" action="cart_insert" name="formm" id="theform">    
        <fieldset>
          <legend> Item detail Info</legend>  
          <a href="product_detail?product_no=${productVO.product_no}">         
            <span style="float: left;">
              <img src="product_images/1.jpg" /><%-- *바꿔야됨* --%>
            </span>              
            <h2> ${productVO.product_name} </h2>  
          </a>    
          <label> 가 격 :  </label>  
          <p> <fmt:formatNumber type="currency" value="${productVO.price}"/></p>  
          <label> 수 량 : </label>
          <input  type="text"   name="quantity" id="quantity" size="2"      value="1"><br>
          <input  type="hidden" name="product_no" value="${productVO.product_no}"><br>
        </fieldset>
        
        <div class="clear"></div>
        <div id="buttons">
          <input type="button" value="장바구니에 담기"   class="submit"    onclick="go_cart()"> 
          <input type="button" value="즉시 구매"       class="submit"    onclick="go_order()"> 
          <input type="reset"  value="취소"           class="cancel">
        </div>
      </form>  
    </div>
    
  <!-- 상품평 처리 -->
<%--  <%@ include file="comment.jsp" %>--%>
  </article>
<%@ include file="../footer.jsp" %>  





  