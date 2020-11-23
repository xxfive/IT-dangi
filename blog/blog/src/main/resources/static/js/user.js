let index = {
	init: function() {
		$("#btn-save").on("click", () => {
			this.save();
		});
		$("#btn-update").on("click", () => {
			this.update();
		});
		
	},

	save: function() {
		//alert('user의 save함수 호출됨')
		let data = {
			username: $("#username").val(),
			password: $("#password").val(),
			email: $("#email").val()
		};

		$.ajax({
			type: "POST",
			url: "/auth/joinProc",
			data: JSON.stringify(data),
			contentType: "application/json;charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			if(resp.status===500){
				alert("회원가입에 실패했습니다.")
			}else{
				alert("회원가입이 완료되었습니다.")
				location.href = "/";
				
			}
		}).fail(function() {
			alert(JSON.stringify(error));
		});
	},
	
	update: function() {
		//alert('user의 save함수 호출됨')
		let data = {
			id: $("#id").val(),
			username: $("#username").val(),
			password: $("#password").val(),
			email: $("#email").val()
		};

		$.ajax({
			type: "PUT",
			url: "/user",
			data: JSON.stringify(data),
			contentType: "application/json;charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			alert("회원수정이 완료되었습니다.")
		
			location.href = "/";
		}).fail(function() {
			alert(JSON.stringify(error));
		});
	},

}

index.init();