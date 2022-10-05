<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 중복확인</title>
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
<div style="text-align: center">
	<h3>* 아이디 중복확인 *</h3>
    <form method="post" action="./idCheckAction.bo" onsubmit="return blankCheck(this)">
    아이디 : <input type="email" name="id" autofocus>
    <input type="submit" value="중복확인">
    </form>
    </div>
    
    <script>
    function blankCheck(f){
    	var id=f.id.value;
        id=id.trim();
        if(id.length<5){
        	alert("아이디는 5자 이상 입력해주십시오.");
            return false;
        }//if end
        return true;
    }//blankCheck() end
    </script>
</body>
</html>