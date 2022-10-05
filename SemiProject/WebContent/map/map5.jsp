<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영도구</title>
     <style type="text/css">
/* 폰트============================= */
* {
    font-family: 'RIDIBatang';
}

@font-face {
    font-family: 'RIDIBatang';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/RIDIBatang.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
/* 폰트============================= */
    
    </style>   
</head>
<body>
<div id="map" style="width: 580px; height:430px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=dfca5b3863564f021175c274a0079e2a"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(35.08811677, 129.0701864), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption);

/////////

//마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다

var imageSrc = 'carMarker2.jpg', // 마커이미지의 주소입니다    
imageSize = new kakao.maps.Size(36, 36), // 마커이미지의 크기입니다
imageOption = {offset: new kakao.maps.Point(18, 3)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다


var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
 markerPosition  = new kakao.maps.LatLng(35.08811667, 129.0701861); 
////////////


// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition,
    image: markerImage
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

var iwContent = '<div style="padding:3px; font-size:16px;">Chaca 영도구점<br><a href="https://map.kakao.com/link/map/Chaca 영도구점,35.08811667, 129.0701861" style="color:blue" target="_blank">큰지도보기 </a><a href="https://map.kakao.com/link/to/Chaca 영도구점,35.08811667, 129.0701861" style="color:blue" target="_blank">길찾기</a></div>', 
// 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwPosition = new kakao.maps.LatLng(35.08811667, 129.0701861); //인포윈도우 표시 위치입니다

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