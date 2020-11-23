<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  </head>
<body>

<div class="container">
  <h2>로그인</h2>
  <form>
  <div class="form-group">
      <label for="userid">아이디:</label>
      <input type="text" class="form-control" id="userid" placeholder="Enter id" name="userid">
    </div>
    <div class="form-group">
      <label for="password">비밀번호:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
    </div>
  </form>
   <button id="btn-login" class="btn btn-default">로그인</button>
</div>
</body>
</html>
<br><br><br><br><br><br><br><br><br><br><br>
<script src="/js/user.js"></script>
<%@ include file="../includes/footer.jsp"%>

