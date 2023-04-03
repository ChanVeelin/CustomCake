<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>  
<%@ include file="../header.jsp" %> 
  <article>
    <h1> ${productVO.product_name} </h1>
    <div id="itemdetail" >
      <form  method="post" name="formm" id="theform">    
        <fieldset>
          <legend></legend>  
          <a href="product_detail?product_no=${productVO.product_no}">         
            <span style="float: left;">
              <img src="product_images/${productVO.image}" style="width:800px; height:526px;"/>
            </span>              
            <h2> ${productVO.product_name} </h2>  
          </a>    
          <label> 가 격 :  </label>  
          <p> <fmt:formatNumber type="currency" value="${productVO.default_price}"/></p>  
          <label> 수 량 : </label>
          <input  type="text"   name="quantity" id="quantity" size="2"      value="1"><br>
          <input  type="hidden" name="product_no" value="${productVO.product_no}"><br>
        </fieldset>
       <tr>
        <td>${noticesVO.content}</td>
       </tr>
        
        
        <div class="clear"></div>
        <div id="buttons">
          <input type="button" value="주문서 작성하기"   class="submit"    onclick="location.href='cart_write_form?product_no='+${productVO.product_no}"> 
          <input type="reset"  value="취소"           class="cancel">
        </div>
      </form>  
    </div>
    
  <!-- 상품평 처리 -->
<%--  <%@ include file="comment.jsp" %>--%>
  </article>
<%@ include file="../footer.jsp" %>  





  