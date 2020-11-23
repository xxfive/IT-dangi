<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../includes/header.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>IT 단기</title>
<div class="container">
<br><br>
	<button class="btn btn-success" onclick="history.back()">목록</button>
	<a href="/board/${board.id}/updateForm" class="btn btn-warning">수정</a>
	<button id="btn-delete" class="btn btn-danger">삭제</button>
	<br><br>
	<div>
		글 번호 : <span id="id"><i>${board.id} </i></span>
		<br><br>
	</div>
		<div class="form-group">
			<h3>제목 : ${board.title}</h3>
		</div>
		<br><br>
		<div class="form-group">
			<div>내용 : ${board.content}</div>
		</div>
		<br><br>
		
		<div class="card">
			<div class="card-body"><textarea class="form-control" rows="1"></textarea></div>
			<div class="card-footer"><button class="btn btn-primary">등록</button></div>
		</div>
		<br>
		<div class="card">
			<div class="card-header">댓글</div>
			<ul id="reply-box" class="list-group">
 				<li id="reply--1" class="list-group-item d-flex justify-content-between">
				<c:forEach var="reply" items="${board.replys}">
 					<div>${reply.content}</div>
				</c:forEach>
 					<div class="d-flex">
 					<div>${reply.user.name}</div>
 					</div>
 						<button class="badge">삭제</button>
 				</li>
			</ul>
		</div>
		
	</div>

</body>
</html>
<script src="/js/board.js"></script>
<%@include file="../includes/footer.jsp"%>
