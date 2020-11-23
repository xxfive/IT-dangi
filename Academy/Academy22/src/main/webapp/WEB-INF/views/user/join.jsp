<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>회원가입</h2>
  <form>
  <div class="form-group">
      <label for="userid">아이디:</label>
      <input type="text" class="form-control" id="userid" placeholder="Enter id" name="userid" maxlength="10">
    </div>
    <div class="form-group">
      <label for="password">비밀번호:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" maxlength="20">
    </div>
     <div class="form-group">
      <label for="password">비밀번호 확인:</label>
      <input type="password" class="form-control" id="passCheckBtn" placeholder="Enter password confirm" name="passCheckBtn">
    </div>
    <div class="form-group">
      <label for="name">이름:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
    </div>
    <div class="form-group">
      <label for="email">이메일:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="phone">전화번호:</label>
      <input type="text" class="form-control" id="phone" placeholder="Enter phone" name="phone">
    </div>
  </form>
    <button id="btn-save" class="btn btn-default"id="send" name="send">가입하기</button>
</div>
</body>
</html>
<br><br><br><br>
  <script src="/js/user.js"></script>
<%@ include file="../includes/footer.jsp"%>