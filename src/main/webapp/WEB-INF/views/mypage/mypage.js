/**
 * 
 */
 function messageCheck(item){
	var message_check = document.getElementById("message_check");
	if (message_check.checked == true) {
		document.getElementById("message").disabled = false;
		document.getElementById("message").focus();
	} else {
		document.getElementById("message").value = "";
		document.getElementById("message").disabled = true;
	}
}
function imageCheck(item){
	var image_check = document.getElementById("image_check");
	if (image_check.checked == true) {
		document.getElementById("image").disabled = false;
	} else {
		document.getElementById("image").disabled = true;
	}
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
	
function go_favorite() {
	var id = document.getElementById("id").value;
	
	if (id == null) {
		alert("로그인후 가능합니다.")
		document.getElementById("id").focus();
		return "login";
	} else{
		alert("찜목록에 추가 되었습니다!")
		var form = document.getElementById("theform");
		form.action = "cart_insert";
		form.submit();
	} 
}

