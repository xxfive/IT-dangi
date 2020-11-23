<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<title>IT 단기</title>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

	<!-- Bootstrap core CSS -->
  <link href="/resources/css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/resources/css/heroic-features.css" rel="stylesheet">

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
              <li><a href="/course">강좌 </a></li>
              <li><a href="/teacher">강사진 </a></li>
            	<li><a href="/board/boardList">강의후기 </a></li>
                
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

  <!-- Page Content -->
  <div class="container">

    <!-- Jumbotron Header -->
    <header class="jumbotron my-4">
    <h2 style="color:red">HOT한 강의!</h2>
      <h3>자바(Java)ORM기반 응용SW개발자</h3>
      <p class="lead">임베디드 애플리케이션 개발 기술과 자바기술 및 자바ORM 기반의 표준 데이터 처리 기술인 JPA를 학습하여 생산성과 품질 향상이 우수한 스프링프레임워크 JPA를 활용한 융합 인력양성을 목표로 합니다.</p>
      <img src="/resources/img/java.png" alt="java"/><br><br>
      <a href="http://www.btc.ac.kr/p/?j=49&edu_code=VmtaYVUySnRVWGROVkZwVVYwZGpPUT09K00=" class="btn btn-primary">자세히 보기</a>
    </header>

    <!-- Page Features -->
    <div class="row text-center">

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="/resources/img/plc.png" alt="PLC">
          <div class="card-body">
            <h4 class="card-title">PLC 제어시스템설계 양성 과정 B</h4>
            <p class="card-text">자동제어시스템설계 분야에 취업을 희망하는 구직자를 대상으로 프로세서 공정 특성을 분석하여 제어성능이 최적으로 발휘되도록 자동화 시스템을 구성하고 효율적인 제어시스템설계 업무를 수행할 수 있는 인력 양성을 목표로 한다.</p>
          </div>
          <div class="card-footer">
            <a href="http://www.btc.ac.kr/p/?j=49&edu_code=VmtaYVUySnRVWGROVkZwVVZrWlZPUT09K00=" class="btn btn-primary">자세히 보기</a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="/resources/img/youtube.png" alt="youtube">
          <div class="card-body">
            <h4 class="card-title">유튜브(YouTube)크리에이터(영상편집,프리미어, 에프터이펙트)</h4>
            <p class="card-text">최근 가장 유망한 직종 중 하나인 유튜브 크리에이터의 첫걸음, 영상편집 프로그램 기초부터 썸네일 제작 등 유튜브 운영·관리까지 학습할 수 있는 과정입니다.</p>
          </div>
          <div class="card-footer">
            <a href="http://www.btc.ac.kr/p/?j=49&edu_code=VmtaYVUySnRVWGROVkZwVlYwZE5PUT09K00=" class="btn btn-primary">자세히 보기</a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="/resources/img/spring.png" alt="spring">
          <div class="card-body">
            <h4 class="card-title">Spring기반 자바(Java)융합개발자 2차</h4>
            <p class="card-text">다양한 기기의 융합과 자바 애플리케이션 실무개발능력을 갖추고, 파이썬 언어를 활용하여 임베디드 애플리케이션을 개발하며 오픈소스 SW를 기반으로 표준화된 Spring Framework 연동 응용SW를 개발하는 과정입니다.</p>
          </div>
          <div class="card-footer">
            <a href="http://www.btc.ac.kr/p/?j=49&edu_code=VmtaYVUySnRVWGROVkZwVVZrWkZPUT09K00=" class="btn btn-primary">자세히 보기</a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="/resources/img/front.png" alt="front">
          <div class="card-body">
            <h4 class="card-title">프론트엔드 디자인(웹디자인&퍼블리셔)</h4>
            <p class="card-text">프론트엔드(frontend) 개발과 코딩에 대한 기본 지식을 갖추고 사용자 중심의 디자인 설계를 바탕으로
				사용자 인터랙티비티, 앱 인터페이스를 디자인하고 개발자들과의 협업을 윤활적으로 수행하는 커리큘럼입니다.</p>
          </div>
          <div class="card-footer">
            <a href="http://www.btc.ac.kr/p/?j=49&edu_code=VmtaYVUySnRVWGROVkZwVVYwZE5PUT09K00=" class="btn btn-primary">자세히 보기</a>
          </div>
        </div>
      </div>

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">부산 강서구 명지동</p>
      <p class="m-0 text-center text-white">xxfive@admin.com</p>
      <p class="m-0 text-center text-white">010-1234-5678</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

