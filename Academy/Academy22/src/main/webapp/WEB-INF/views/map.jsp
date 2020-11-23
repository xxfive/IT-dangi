<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="includes/header.jsp"%>
 <br/><br/>
<!DOCTYPE html>
<title>IT 단기</title>
<html>
<head>
    <meta charset="utf-8">
   <!--  --> <title>마커에 인포윈도우 표시하기</title>
    <style>
    	#map{
    		width:700px;
    		height:500px;
    		margin:0 auto;
    		text-align:center;
    	}
    	
    	.map_center{
    		text-align:center;
    	}
    	
   
    </style>
</head>
<body>
<div id="map"></div>

 <br/><br/>
<section class="map_wrap">
	<dl class="map_center">
    	<h2>오시는 길</h2>
	    
    </dl>
    <ul class="map_right">
        <li><span class="tit">주소 : </span><span class="text">(47291) 부산광역시 부산진구 중앙대로 708</span></li>
        <li><span class="tit">대표전화 : </span><span class="text">051-753-5600</span></li>
        <li><span class="tit">팩스번호 : </span><span class="text">051-753-5117</span></li>
        <li><span class="tit">버스 이용 시 : </span><span class="text">
        	일반 : 10, 20, 24, 54, 66, 81, 83, 83-1, 86, 88A, 103, 111, 133, 583 서면 정류장 하차<br />
            급행 : 1010, 1002(심야) 서면 정류장 하차<br />
            마을 : 부산진구12  서면역 정류장 하차</span></li>
        <li><span class="tit">지하철 이용 시</span><span class="text">서면역 2번 출구 쥬디스태화 방면 10m 부산파이낸스센터 4, 5층</span></li>
    </ul>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6695724389f250359fc9b4327c151da6"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption);

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(35.155990, 129.059558); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwPosition = new kakao.maps.LatLng(35.155990, 129.059558); //인포윈도우 표시 위치입니다

// 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
    position : iwPosition, 
    content : iwContent 
});
  
// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker); 
</script>
</body>
</html>
<br/><br/>
<%@ include file="includes/footer.jsp"%>