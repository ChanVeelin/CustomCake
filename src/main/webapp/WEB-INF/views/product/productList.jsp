<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>  
<%@ include file="../header.jsp" %>  
<%@ include file="sub_menu.html" %>       
  <article>
    <h2> Item</h2>     
   
    <div id="near_card_form" class="near-card-form-content">
		<c:forEach var="productVO" items="${productList}">
			<div class="near-card-form-card">
				<div class="card" style="width: 18rem;">
						<img src="product_images/${productVO.image}" style="width:152px; height:100px;">
					<div class="card-body">
						<a href="product_detail?product_no=${productVO.product_no}">
							<h5 class="card-title">${productVO.product_name}</h5>
							<p class="card-text">${productVO.default_price}</p>
						</a>
					</div>
					<div class="near-card-form-bottom">
						<label>좋아요 13</label> <label>·</label> <label>댓글 44</label>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>  
    <div class="clear"></div>
  </article>
<%@ include file="../footer.jsp" %>    