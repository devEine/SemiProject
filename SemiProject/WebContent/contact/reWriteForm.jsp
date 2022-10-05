<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>답글쓰기 페이지</title>
<style>
@import url("https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap");

/* * {
    margin: 0;
    padding: 0;
/*     box-sizing: border-box; */
}

/* body {
    text-align: center;
    padding: 100px;
    background: whitesmoke;
    display: table-cell;
} */

button {
    margin: 20px;
}

.w-btn {
    position: relative;
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}

.w-btn-outline {
    position: relative;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
} 



.w-btn-green {
    background-color: #77af9c;
    color: #d7fff1;
}


.w-btn-green-outline {
    border: 3px solid #77af9c;
    color: darkgray;
}



.w-btn-green-outline:hover {
    background-color: #77af9c;
    color: #d7fff1;
}


.w-btn:hover {
    letter-spacing: 2px;
    transform: scale(1.2);
    cursor: pointer;
}

.w-btn-outline:hover {
    letter-spacing: 2px;
    transform: scale(1.2);
    cursor: pointer;
}

.w-btn:active {
    transform: scale(1.5);
}

.w-btn-outline:active {
    transform: scale(1.5);
}

.w-btn-gra1 {
    background: linear-gradient(-45deg, #33ccff 0%, #ff99cc 100%);
    color: white;
}

.w-btn-gra2 {
    background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
    color: white;
}

.w-btn-gra3 {
    background: linear-gradient(
        45deg,
        #ff0000,
        #ff7300,
        #fffb00,
        #48ff00,
        #00ffd5,
        #002bff,
        #7a00ff,
        #ff00c8,
        #ff0000
    );
    color: white;
}

.w-btn-gra-anim {
    background-size: 400% 400%;
    animation: gradient1 5s ease infinite;
}

@keyframes gradient1 {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}

@keyframes gradient2 {
    0% {
        background-position: 100% 50%;
    }
    50% {
        background-position: 0% 50%;
    }
    100% {
        background-position: 100% 50%;
    }
}

@keyframes ring {
    0% {
        width: 30px;
        height: 30px;
        opacity: 1;
    }
    100% {
        width: 300px;
        height: 300px;
        opacity: 0;
    }
}


//=================
input[type="text"],
input[type="password"] {
  height: auto;  /* 높이 초기화 */
  line-height: normal;  /* line-height 초기화 */
  padding: .8em .5em;  /* 여백 설정 */
  border-radius: 1px;
}

.textbox {position: relative;}

.textbox label {
  position: absolute;
  top: 1px;  /* input 요소의 border-top 설정값 만큼 */
  left: 1px;  /* input 요소의 border-left 설정값 만큼 */
  padding: .8em .5em;  /* input 요소의 padding 값 만큼 */
  color: #999;
  cursor: text;
}

.textbox input[type="text"],
.textbox textarea,
.textbox input[type="password"] {
  width: 100%;  /* 원하는 너비 설정 */ 
  height: auto;  /* 높이값 초기화 */
  line-height : normal;  /* line-height 초기화 */
  padding: .8em .5em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */
  font-family: inherit;  /* 폰트 상속 */
  border: 1px solid #999;
  border-radius: 15px;  /* iSO 둥근모서리 제거 */
  outline-style: none;  /* 포커스시 발생하는 효과 제거를 원한다면 */
  -webkit-appearance: none;  /* 브라우저별 기본 스타일링 제거 */
  -moz-appearance: none;
  appearance: none;
}

/* input::placeholder {

  font-size: 30px;

}
 */

::placeholder {

  font-size: 18px;
  font-style: italic;

}

::selection {
  background-color: #ECB390;
  color: #fff;
}

@font-face {
font-family: 'BMHANNAPro';
src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_seven@1.0/BMHANNAPro.woff') format('woff');
font-weight: normal;
font-style: normal;
}

.textbox {
	font-family: 'BMHANNAPro';
}

.textbox2 {
font-family: 'BMHANNAPro';
}

/* 폰트============================= */


@font-face {
    font-family: 'RIDIBatang';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/RIDIBatang.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
 *{
    font-family: 'RIDIBatang';

}


/* 폰트============================= */

*{
font-size: 20px;
}


</style>
</head>
<body>
<h2></h2>

<!-- content.jsp 페이지에서 넘어온 정보 => bno,pageNum,re_ref,re_lev,re_seq -->
<%--    bno : ${param.bno }
   pageNum : <%=request.getParameter("pageNum") %>
   re_ref : ${param.re_ref }
   re_lev : ${param.re_lev }
   re_seq : ${param.re_seq } --%>

	 <div style="background-color: #CEE5D0; border: none; margin: 20px; padding: 40px;  text-align: center; ">
      <form action="./ContactReWriteAction.bo?pageNum=${param.pageNum }" method="post">
          <input type="hidden" name="bno" value="${param.bno }"> 
          <input type="hidden" name="re_ref" value="${param.re_ref }"> 
          <input type="hidden" name="re_lev" value="${param.re_lev }"> 
          <input type="hidden" name="re_seq" value="${param.re_seq }"> 
          <input type="hidden" name="password" value="${param.password }"> 
          <input type="hidden" name=id" value="${param.id }">
      
      <p class="textbox2" style="font-size: 40px; font-weight: bold; color: #FCF8E8; "><img src="./images/car.png" style="width: 60px; height: 60px; ">&nbsp;comment<p>
     
      	<p style="color: #fff; font-size: 20px;">차카차카를 이용해주셔서 감사합니다. 고객님들의 문의에 귀기울이는 차카차카가 되겠습니다.<br>
      	차카차카 문의하기 콜센터 24시간 대기운영 Tel.055)244-4444</p><br>
      	<div class="textbox">
         <input type="text" name="name" value="관리자" readonly="readonly"><br>
         <br>
         <input type="password" name="pass" placeholder="비밀번호"><br>
         <br>
         <input type="text" name="subject" value="[답글] 고객님 문의에 답변드립니다." readonly="readonly"><br>
         <br>
         <textarea rows="10" cols="20" name="content" placeholder=" 내용을 입력해주세요"></textarea><br>
      		<br><br>
      	</div>
<!--        <button class="w-btn w-btn-green" type="button">
        BUTTON
    </button> -->
        <button class="w-btn w-btn-green" type="submit" value="답글쓰기">작성하기</button>
      </form>  
   </div>
</body>
</html>