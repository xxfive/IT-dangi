var exp=/^[0-9]{3}-[0-9]{4}-[0-9]{4}$/
let index={
	init:function(){
		$("#btn-save").on("click", ()=>{
			this.save();
		});
		$("#btn-login").on("click", ()=>{
			this.login();
		});
		$("#btn-update").on("click", ()=>{
			this.update();
		});
		
	},
	
	save:function(){
		let data={
			userid:$("#userid").val(),
			password:$("#password").val(),
			passCheckBtn:$("#passCheckBtn").val(),
			name:$("#name").val(),
			email:$("#email").val(),
			phone:$("#phone").val()
		};
		
		//아이디
		if($("#userid").val()==""){
			alert("아이디를 입력하세요");
			$("#userid").focus();
			return false;
		}
		
		//비번
		if($("#password").val()==""){
			alert("비밀번호를 입력하세요");
			$("#password").focus();
			return false;
		}
		
		//비번확인
		if($("#passCheckBtn").val()==""){
			alert("비밀번호를 다시 입력하세요");
			$("#passCheckBtn").focus();
			return false;
		}
		
		if($("#passCheckBtn").val()!=$("#password").val()){
			alert("비밀번호가 일치하지 않습니다");
			$("#passCheckBtn").focus();
			return false;
		}
		
		//이름
		if($("#name").val()==""){
			alert("이름을 입력하세요");
			$("#name").focus();
			return false;
		}
		
		//이메일
		if($("#email").val()==""){
			alert("이메일을 입력하세요");
			$("#email").focus();
			return false;
		}
		
		//전화번호
		if(!$("#phone").val().match(exp)){ //위에 전화번호 양식에 안맞으면
			alert("전화번호를 입력하세요");
			$("#phone").focus();
			return false;
		}
		
		$.ajax({
			type:"POST",
			url:"/api/user",
			data:JSON.stringify(data),
			contentType:"application/json;charset=utf-8",
			dataType:"json"
		}).done(function(resp){
			alert("회원가입이 완료되었습니다.");
			location.href="/user/login";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
	login:function(){
		let data={
			userid:$("#userid").val(),
			password:$("#password").val(),
			passCheckBtn:$("#passCheckBtn").val(),
			name:$("#name").val(),
			email:$("#email").val(),
			phone:$("#phone").val()
		};
		
		//아이디
		if($("#userid").val()==""){
			alert("아이디를 입력하세요");
			$("#userid").focus();
			return false;
		}
		
		//비번
		if($("#password").val()==""){
			alert("비밀번호를 입력하세요");
			$("#password").focus();
			return false;
		}
	
		$.ajax({
			type:"POST",
			url:"/api/user/login",
			data:JSON.stringify(data),
			contentType:"application/json;charset=utf-8",
			dataType:"json"
		}).done(function(resp){
			alert("로그인이 완료되었습니다.");
			location.href="/";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
	update:function(){
		let data={
			userid:$("#userid").val(),
			password:$("#password").val(),
			email:$("#email").val(),
			phone:$("#phone").val()
		};
	
		$.ajax({
			type:"PUT",
			url:"/user",
			data:JSON.stringify(data),
			contentType:"application/json;charset=utf-8",
			dataType:"json"
		}).done(function(resp){
			alert("수정이 완료되었습니다.");
			location.href="/";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	}
	
	
}

index.init();
