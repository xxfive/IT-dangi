<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ include file="../includes/header.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.pagination {
	justify-content: center;
}

.pagination>li>a {
	float: none;
}
</style>
<title>IT 단기</title>
<div class="container">
	<h1 class="page-header">강의후기</h1>
	<c:forEach var="board" items="${boards.content}">
		<div class="card m-3">
  			<div class="card-body">
				<h4 class="card-title">${board.title}</h4
				><a href="/board/${board.id}" class="btn btn-primary">글 보기</a>
		</div>
	</div>
	<br/><br/>
	</c:forEach>

	<ul class="pagination">
	<c:choose>
		<c:when test="${boards.first}">
		<li class="page-item disabled"><a class="page-link" href="?page=${boards.number-1}">이전</a></li>
		</c:when>
		<c:otherwise>
	 	 <li class="page-item"><a class="page-link" href="?page=${boards.number-1}">이전</a></li>
		</c:otherwise>
	</c:choose>
	
	<c:choose>
		<c:when test="${boards.last}">
		<li class="page-item disabled"><a class="page-link" href="?page=${boards.number+1}">다음</a></li>
		</c:when>
		<c:otherwise>
	 	 <li class="page-item"><a class="page-link" href="?page=${boards.number+1}">다음</a></li>
		</c:otherwise>
	</c:choose>
  	
</ul>
	<input type = "button" onclick="location.href='/board/saveForm'" value = "글쓰기">
<br/><br/><br/><br/>
</div>

<%@ include file="../includes/footer.jsp"%>