<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IT 단기</title>
    <meta name="description" content="Free Bootstrap Theme by ProBootstrap.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,700|Open+Sans">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/styles-merged.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/custom.css">

 </head>
  <body>
	<nav class="navbar navbar-default probootstrap-navbar">
        <div class="container">
          <div class="navbar-header">
            <div class="btn-more js-btn-more visible-xs">
              <a href="#"><i class="icon-dots-three-vertical "></i></a>
            </div>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/" title="ProBootstrap:Enlight">Enlight</a>
          </div>

          <div id="navbar-collapse" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="active"><a href="/">메인</a></li>
               <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="dropdown-toggle">학원소개</a>
                <ul class="dropdown-menu">
                  <li><a href="introduce">인삿말 & 문의</a></li>
                  <li><a href="map">찾아오시는 길</a></li>
                </ul>
              </li>
              <li><a href="/course">강좌</a></li>
            	<li><a href="/board/boardList">강의후기</a></li>
                
             <c:choose>
             	<c:when test="${empty sessionScope.principal }">
             		<li><a href="/user/login">로그인</a></li>
             		<li><a href="/user/join">회원가입</a></li>
             </c:when>
				
			<c:otherwise>
					<li><a href="/user/updateForm">회원정보</a></li>
              		<li><a href="/logout">로그아웃</a></li>
			</c:otherwise>             	
             </c:choose>
       
             
            </ul>
          </div>
        </div>
      </nav>