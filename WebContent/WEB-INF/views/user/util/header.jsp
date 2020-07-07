<%@page import="user.dog.dto.Dog_Data"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%List <Dog_Data> dog_list = (List)request.getAttribute("dog_List");  %>
<%int dogcnt = (Integer)request.getAttribute("dogcnt");  %>

<!DOCTYPE HTML>

<html>
	<head>
		<title>DaSom</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
		 <link href="/resources/AdminTemplate/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<link rel="stylesheet" href="/resources/UserTemplate/assets/css/main.css" />  
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pretty-checkbox@3.0/dist/pretty-checkbox.min.css" />
		<!-- Scripts -->			
		<script src="/resources/UserTemplate/assets/js/jquery.min.js"></script>
		<script src="/resources/UserTemplate/assets/js/jquery.scrolly.min.js"></script>
		<script src="/resources/UserTemplate/assets/js/skel.min.js"></script>
		<script src="/resources/UserTemplate/assets/js/util.js"></script>
		<script src="/resources/UserTemplate/assets/js/main.js"></script>
		
			<!--Alert 디자인 라이브러리 -->
   	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>	
   	<script type="text/javascript">
$(document).ready(function(){
	$(".open").on('click',function(){
		$(".popup").show();
		$(".dim").show();
	});
	$(".popup .close").on('click',function(){
		$(this).parent().hide();
		$(".dim").hide();
	});


	
});
</script>
<script>
function toggle(){	
		$("#dd-item").fadeToggle();		
}
function logout(){
			location.href='/logout/logout'
			
}
</script>
		<style>

#envelope{
	color: #FA8072;
}
		
#envelope:hover{	
	color:#708090;
	transition:0.5s;
}

		.badge {
  display: inline-block;
  padding: 0.25em 0.4em;
  font-size: 75%;
  font-weight: 700;
  line-height: 1;
  text-align: center;
  white-space: nowrap;
  vertical-align: baseline;
  border-radius: 0.35rem;
  transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}
@media (prefers-reduced-motion: reduce) {
  .badge {
    transition: none;
  }
}
a.badge:hover, a.badge:focus {
  text-decoration: none;
}
.badge:empty {
  display: none;
}
.badge-danger {
  color: #fff;
  background-color: #e74a3b;
}

a.badge-danger:hover, a.badge-danger:focus {
  color: #fff;
  background-color: #d52a1a;
}

a.badge-danger:focus, a.badge-danger.focus {
  outline: 0;
  box-shadow: 0 0 0 0.2rem rgba(231, 74, 59, 0.5);
}

.dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  display: none;
  float: left;
  min-width: 10rem;
  padding: 0.5rem 0;
  margin: 0.125rem 0 0;
  font-size: 0.85rem;
  color: #858796;
  text-align: left;
  list-style: none;
  background-color: #fff;
  background-clip: padding-box;
  border: 1px solid #e3e6f0;
  border-radius: 0.35rem;
}

.shadow {
  box-shadow: 0 0.15rem 1.75rem 0 rgba(58, 59, 69, 0.15) !important;
}
.d-flex {
  display: flex !important;
}
.align-items-center {
  align-items: center !important;
}
		</style>
		
		<style>
		
<style type="text/css">


.Popup-container {
   width:385px;
   line-height:50px;
   margin: 40px auto;

}
/* 로그인입니다 css */
h3 {
   text-align: center;
}

h3 span{
   color:#ff9364;
}
/* 로그인버튼 */
.login {
   background-color: #6E6E6E;
   color:white;
   border-radius: 5px;
   border: 0;
   padding: 10px 172px;
   
}
/* 회원가입버튼 */
.singup {

   background-color:#6E6E6E;
   color:white;
   border-radius: 5px;
   border: 0;
   padding: 10px 165px;
   
}

/* 아이디 비밀번호 찾기 */
.found {
	position :relative;
	left:25px;
	margin: 0px 3px; 
	text-decoration: none;
	font-family: "돋움", dotum, "굴림", gulim, arial, helvetica, sans-serif;
	font-size: 13px;
}
.found:hover{
	text-decoration: underline;	
}

/* 팝업처리 */
.popup { 
	display: none; 
	position: fixed; 
 	left: 50%;  
 	top: 50%;  
 	z-index: 100;  

	padding:50px 50px 50px;
	width: 550px; height: 530px; 
	transform: translate(-50%, -50%); 
	box-sizing: border-box; 
	background: #fff;
}
.popup h2 { 
	padding: 0 0 42px; 
	border-bottom: 3px solid #444; 
	font-weight: normal;
	font-size:36px; 
	color:#222; 
	text-align: center; 
	line-height: 100%;
}
.popup .close { 
	position: absolute; 
	right:40px; top: 40px; width: 41px; height: 41px; 
	background: url(/resources/mypageTemplate/img/btn-close.png) no-repeat; 
	color:transparent;
}
.popup .con { 
	padding: 20px 48px; 
	border-bottom:1px solid #e8e8e8;
}

.dim { 
	display: none;
	position: fixed; 
	left: 0; top: 0; 
	z-index: 99; 
	width: 100%; height: 100%; 
	background:rgba(0,0,0,0.5);
}		
		</style>			
		</head>   
    <body  id="top">
		<!-- Header -->
			<header id="header">
				<nav class="left">
					<a href="#menu"><span>Menu</span></a>
				</nav>
				           
				<a href="/main" class="logo">DaSom</a>									
				<nav class="right">
					 <c:if test="${empty login }"> 
					<a href="#" class="button alt open">Login</a>
					</c:if>
					<c:if test="${not empty login }">
			
				<span style="color:#FF6347">[<%=session.getAttribute("usergrade") %>] :: </span><%=session.getAttribute("userid") %> 님 환영합니다!&nbsp;&nbsp;&nbsp;
				
				<!-- 알람 버튼 -->				
				<a class="nav-link dropdown-toggle" onclick="toggle();"href="#" id="envelope" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw" ></i>               
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">${dogcnt }+</span>
              </a>
              <div id="dd-item" class="table-wrapper"style="line-height:15px;display:none;width:400px;height:400px;border:3px solid #FA8072;border-radius: 20px;position:absolute;background:white;top:80px;right:130px;padding:10px">            	          		
	             	<h4 style="margin:30px;"><i class="fas fa-paw fa-fw" style="color:#FF6347"></i>&nbsp;MY DOG 현황 </h4>				
					<table style="font-size:15px;">
					
				<c:forEach items="${dog_List }" var="d" end="2">     
					<tr style="vertical-align:middle;">
						<td style="text-align:center;margin:0 auto;padding:10px 0;"><img src="/upload/${d.dog_stored_file_name }" style="width:30px; height:30px; border-radius:50px;"></td>						
						<td >${d.dogname }</td>
						<td>
						<c:if test="${d.doggender eq 'M' }">
							수컷
						</c:if>	
						<c:if test="${d.doggender eq 'W' }">
							암컷
						</c:if>							
						</td>
						<td >${d.dogkind }</td>						
						 <td>		
						 <c:set var="p1" value="${d.dogno }" />			               						 
						 <c:forEach items="${userlikeList}" var="m" >	
							 <c:set var="p2" value="${m.dogno }" />									 	          
			                	<c:if test="${p1 eq p2 }">	
			                		<c:choose>
			                			<c:when test="${m.applysw eq 0 }"><span style="color:green">신청가능</span></c:when>			                			
			                			<c:when test="${m.applysw eq 1 }"><span style="color:black">승인대기중</span> </c:when>
			                			<c:when test="${m.applysw eq 2 }"><span style="color:red">불허가</span> </c:when>
			                		</c:choose>							   								      
								</c:if>				    		
							</c:forEach>					
							</td>
					</tr>
				</c:forEach>								
					</table>
					
					<hr>
					<a href="/dog/list">입양 페이지 이동</a>					
              </div>             
              &nbsp;&nbsp;&nbsp;                
              <!-- 로그아웃버튼 -->
					<input type ="button" value="Logout" class="button alt open" onclick="logout()" />
					</c:if>
				</nav>
				
				
			</header>

		<!-- Menu -->
			<nav id="menu">
				<ul class="links">
					<li><a href="/main">홈</a></li>

					<c:if test="${not empty login }">
						<li><a href="/mypage/main">마이페이지</a></li>
					</c:if>
					<li><a href="/dog/list">가족찾기</a></li>
					<li><a href="/miss/list">분실견</a></li>
					<li><a href="/dog_shelter/list">보호소 지도찾기</a></li>
					<li><a href="/qna/list">QNA</a></li>
				</ul>
<!-- 				<ul class="actions vertical"> -->
<!-- 					<li><a href="#" class="button fit">Login</a></li> -->
<!-- 				</ul> -->
			</nav>
			
			
			<%-------------로그인 버튼 팝업 --%>
				<div class="popup">
				
				<div class="Popup-container" style="text-align:center">
				      <h3><span><i class="fas fa-bone text-gray-300"></i>&nbsp;&nbsp;로그인</span></h3>
				   <hr>
				   <form action="/login/login" method="post">				   
				      <!-- 로그인 틀 -->
				     
				      	<label for="useridHeader"></label>
				      	<input type="text" class="inputForm" id="useridHeader" name="userid" placeholder="ID" required style="height:50px; width: 450px" />
							
				      <label for="userpwHeader"></label>
				      <input type="password"class="inputForm" id="userpwHeader" name="userpw"  placeholder="PASSWORD" required style="height:50px; width: 450px" /><br>
				      
				      <!-- <button>로그인</button> -->
				      <input type="submit" value="로그인" class="login"/>	
				   
				  	 <input type="button" class="singup" value="회원가입" onclick="location.href='/resources/js/singupinfo.jsp'" />						
					</form>				
					<!-- 	아이디비밀번호 찾기 -->
					<a href="/id/find" class="found">아이디</a>
					<a href="/pw/find" class="found">비밀번호찾기</a>&nbsp;&nbsp;&nbsp;
					<a href="/admin" class="found">관리자 로그인</a>				
				</div>
				
				<a href="#a" class="close">닫기</a>
				</div>

			<div class="dim"></div>