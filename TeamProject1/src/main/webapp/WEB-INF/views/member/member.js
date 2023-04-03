function idcheck(){
	if(document.getElementById("id").value==""){
		alert("아이디를 입력 해 주세요.");
		document.getElementById("id").focus();
		return false;
	}
	//url - 컨트롤러 요청하는 url,
	// "_balnk_" - 새로운 윈도우를 생성하여표시
	var url="id_check_form?id="+document.getElementById("id").value;
	window.open(url, "_balnk_", "toolbar=no, menubar=no, scrollbars=no, width=450, height=350");
	
}


function post_zip(){
	var url="find_zip_num"
	window.open(url, "_balnk_", "toolbar=no, menubar=no, scrollbars=no, width=700, height=500");
}

function go_save(){
	if(document.getElementById("id").value==""){
		alert("사용자 아이디를 입력 하세요.");
		document.getElementById("id").focus;
		return false;
	}else if(document.getElementById("reid").value==""){
		alert("아이디 중복 체크 하세요.");
		document.getElementById("id").focus;
		return false;
	}else if(document.getElementById("pwd").value==""){
		alert("비밀번호를 입력 하세요.");
		document.getElementById("pwd").focus;
		return false;
	}else if(document.getElementById("pwd").value!=document.getElementById("pwdCheck").value){
		alert("비밀번호가 일치하지 않습니다.");
		document.getElementById("pwd").focus;
		return false;
	}else if(document.getElementById("pwd").value!=document.getElementById("pwdCheck").value){
		alert("비밀번호가 일치하지 않습니다.");
		document.getElementById("pwd").focus;
		return false;
	}else if(document.getElementById("name").value==""){
		alert("이름을 입력하세요.");
		document.getElementById("name").focus;
		return false;
	}else if(document.getElementById("email").value==""){
		alert("이메일을 입력하세요.");
		document.getElementById("email").focus;
		return false;
	}else{
		document.getElementById("join").action="join";
		document.getElementById("join").submit();
	}

}

function find_id_form(){
	var url="find_id_form"
	window.open(url, "_balnk_", "toolbar=no, menubar=no, scrollbars=no, width=550, height=450");
}

function findMemberId(){
	if(document.getElementById("name").value==""){
		alert("이름을 입력 하세요");
		document.getElementById("name").focus();
		return false;
	}else if(document.getElementById("email").value==""){
		alert("이메일을 입력 하세요");
		document.getElementById("email").focus();
		return false;
	}else{
		var form=document.getElementById("findId");
		form.action="find_id";
		form.submit();
	}
}

function findPassword(){
	if(document.getElementById("id2").value==""){
		alert("아이디를 입력 하세요");
		document.getElementById("id2").focus();
		return false;
	}else if(document.getElementById("name2").value==""){
		alert("이름을 입력 하세요");
		document.getElementById("name2").focus();
		return false;
	}else if(document.getElementById("email2").value==""){
		alert("이메일을 입력 하세요");
		document.getElementById("email2").focus();
		return false;
	}else{
		var form=document.getElementById("findPW");
		form.action="find_pwd";
		form.submit();
	}
}

function changePassword(){
	if(document.getElementById("pwd").value==""){
		alert("비밀번호 입력하세요");
		document.getElementById("pwd").focus();
		return false;
	}else if(document.getElementById("pwd").value!=document.getElementById("pwdcheck").value){
		alert("비밀번호를 확인하세요");
		document.getElementById("pwd").focus();
		return false;
	}else{
		var form=document.getElementById("pwd_form");
		form.action="change_pwd";
		form.submit();
	}
}