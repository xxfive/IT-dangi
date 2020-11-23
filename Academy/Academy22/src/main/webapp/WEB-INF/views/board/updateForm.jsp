<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>IT 단기</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="/">IT 단기</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="active"><a href="/">메인 </a></li>
               <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="dropdown-toggle">학원소개 </a>
                <ul class="dropdown-menu">
                  <li><a href="introduce">인삿말 & 문의 </a></li>
                  <li><a href="map">찾아오시는 길 </a></li>
                </ul>
              </li>
              <li><a href="course">강좌 </a></li>
              <li><a href="teacher">강사진 </a></li>
            	<li><a href="/board/boardList">자유게시판 </a></li>
                
             <c:choose>
             	<c:when test="${empty sessionScope.principal }">
             		<li><a href="/user/login">로그인 </a></li>
             		<li><a href="/user/join">회원가입 </a></li>
             </c:when>
				
			<c:otherwise>
					<li><a href="/user/userForm">회원정보 </a></li>
              		<li><a href="/logout">로그아웃</a></li>
			</c:otherwise>             	
             </c:choose> 
    </ul>
  </div>  
</nav>
<br>

<div class="container">
 
	<form>
		<input type="hidden" id="id" value="${board.id}"/>
		<div class="form-group">
			<label for="title">제목</label> 
			<input type="text" name="title"
				class="form-control" value="${board.title}" id="title">
		</div>
		<div class="form-group">
			<label for="content">내용</label>
			<textarea class="form-control summernote" rows="5" id="content">${board.content}</textarea>
		</div>
	</form>
		<button id="btn-update" class="btn btn-primary">수정</button>
	</div>

</body>
</html>
<script>
      $('.summernote').summernote({
        tabsize: 2,
        height: 300
      });
    </script>

<script src="/js/board.js"></script>


