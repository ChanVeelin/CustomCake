<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!doctype html>
<html lang="en">

<head>
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
  <link rel="stylesheet" href="css/common.css" >
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>
  
  
  
<style type="text/css">
.item-image {
	width: 500px;
	height: 300px;
	background-image: url("product_images/${product.image}");
	background-position: center;
	background-size: cover;
}
</style>

</head>
<script type="text/javascript">
jQuery.datetimepicker.setLocale("kr");
$(function() {
	$(".datetimepicker").datetimepicker({ 
		format: "Y-m-d H:i",
		inline:true,
		lang:'kr',
		step:30,
		defaultDate:'+1970-01-02',
		defaultTime:'+13:00',
		minDate:'+1970-01-02',
		maxDate:'+1970-02-01',
		minTime:'13:00',
		maxTime:'18:00'		
	});
	$('button.somebutton').on('click', function () {
	    var d = $('.datetimepicker').datetimepicker('getValue');
	    console.log(d.getFullYear());
	});
});



function messageCheck(item){
	var message_check = document.getElementById("message_check");
	var option_price = parseInt(document.getElementById("option_price").value);
	if (message_check.checked == true) {
		document.getElementById("message").disabled = false;
		document.getElementById("message").focus();
		document.getElementById("option_price").value = option_price + 2000;
		document.getElementById("quantity").value = 0;
	} else {
		document.getElementById("total_price").value = 0;
		document.getElementById("message").value = "";
		document.getElementById("message").disabled = true;
		document.getElementById("quantity").value = 0;
		if(document.getElementById("image_check").checked == true){
			document.getElementById("option_price").value = ${product.default_price}+5000;
		} else{
			document.getElementById("option_price").value = ${product.default_price};
		}
	}
}
function imageCheck(item){
	var image_check = document.getElementById("image_check");
	var option_price = parseInt(document.getElementById("option_price").value);
	
	if (image_check.checked == true) {
		document.getElementById("image").disabled = false;
		document.getElementById("option_price").value = option_price + 5000;
		document.getElementById("quantity").value = 0;
	} else {
		document.getElementById("total_price").value = 0;
		document.getElementById("image").disabled = true;
		document.getElementById("preview").style.display = "none";
		document.getElementById("quantity").value = 0;
		if(document.getElementById("message_check").checked == true){
			document.getElementById("option_price").value = ${product.default_price} + 2000;

		} else {
			document.getElementById("option_price").value = ${product.default_price};

		}
	}
}
function selectQuantity(){
	var quantitys = parseInt(document.getElementById("quantity").value);

	var total_price = parseInt(document.getElementById("option_price").value) * quantitys;
	document.getElementById("total_price").value = total_price;	

}


function readURL(input) {
	var preview_image = document.getElementById('preview'); 
	
	if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function(e) {
	      document.getElementById('preview').src = e.target.result;
	      preview_image.style.display = "block";
	    };
	    reader.readAsDataURL(input.files[0]);
	  } else {
	    document.getElementById('preview').src = "";
	  }
}







</script>

<body>
	<div class="wrap">
		<div class="item-image"></div>
			<div class="item-desc">
			<h1>${product.product_name}
				<span class="item-price">가격: ${product.default_price }</span>
			</h1>
		</div>
		<div>
		픽업하실 날짜 (당일 예약불가)<br>
		<input type='text' class='datetimepicker' name='start_dt'  style='width:140px;' value="">
		<input type="button" id="" onClick="getvalue()">
		</div>
		<div class="item-order">
			<label>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
						<input type="checkbox" id="message_check" onchange="messageCheck(this)">문구추가
						<label>
							<span class="input-group-text" id="basic-addon1">문구	입력</span>
						</label>
				</div>
				<br>
				<input type="text" class="form-control" aria-describedby="basic-addon1" id="message" name='message' disabled>
			</div>
			</label>
			<label>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
				<input type="checkbox" id="image_check" onchange="imageCheck(this)">커스텀 추가		
				<label for="image">
 				 <div class="input-group-text" >파일 업로드하기</div>
				</label>
				<input type="file" name="image" id="image" disabled style="display:none;" onchange="readURL(this)">
				<img id="preview" name="preview" style="width:152px; height:100px; display:none;" />
				</div>
			</div>
			</label>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="basic-addon1">기타 요청사항</span>
				</div>
				<input type="text" id="content" name="content" class="form-control" placeholder="ex) 초 2개 주세요!" aria-label="" aria-describedby="basic-addon1">
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<label class="input-group-text" for="quantity">수량</label>
				</div>
				<select class="custom-select" id="quantity" onchange="selectQuantity()">
					<option value="0" selected>수량을 선택해주세요</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select>
			</div>

			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="basic-addon1">옵션 금액</span>
					<input type="text" readonly id="option_price" name="option_price" value="${product.default_price}">
					<span class="input-group-text" id="basic-addon1">최종 금액</span>
					<input type="text" readonly id="total_price" name="total_price" value="">
				</div>
			</div>
		</div>
	<input type="hidden" id="product_no" name="product_no" value="${product.product_no}">
	<input type="hidden" readonly id="pickup_date" name="pickup_date">	
		<button type="button" onclick="order()"
			class="btn btn-primary btn-order">주문하기</button>
	</div>


</body>

</html>

















<%@ include file="../footer.jsp"%>