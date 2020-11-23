<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../includes/header.jsp"%>
 <br><br>
<div class="container">
	<form>
	<input type="hidden" id="id" value="${user.userid}"/>
		<div class="form-group">
			<label for="password">Password</label> <input type="password" value="${user.password}"
				class="form-control" placeholder="update password" id="password">
		</div>
		<div class="form-group">
			<label for="email">Email</label> <input type="email" value="${user.email}"
				class="form-control" placeholder="update email" id="email">
		</div>
		<div class="form-group">
			<label for="phone">phone</label> <input type="email" value="${user.phone}"
				class="form-control" placeholder="update phone" id="phone">
		</div>
		
		
	</form>
		<button id="btn-update" class="btn btn-primary">회원정보수정</button>
 <br><br>
</div>
<script src="/js/user.js"></script>
<%@include file="../includes/footer.jsp"%>
