<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri ="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입양신청 처리</title>
<script type="text/javascript">
	window.onload = function () {
				let timerInterval
				swal({
				  title: '입양신청 허가 중입니다',
				  text: '잠시만 기다려주세요...',
				  timer: 2000,
				  button:[],				  
				}).then((result) => {
					 swal({				
						  icon: "success",
						  text: "입양신청이 허가되었습니다!",
						  timer:3000,
						}).then(function() {
							 window.opener.location.reload();							 
					});				
				});

		}
</script>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>	
	<!-- Custom fonts for this template-->
  <link href="/resources/AdminTemplate/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
   <link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css">
   <link href="https://cdn.datatables.net/1.10.21/css/dataTables.jqueryui.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="/resources/AdminTemplate/css/sb-admin-2.min.css" rel="stylesheet">
  <!-- 체크박스 디자인 -->
  <link href=" https://cdn.jsdelivr.net/npm/pretty-checkbox@3.0/dist/pretty-checkbox.min.css" rel="stylesheet"/>
  <!-- httpRequest.js 임포트 --> 
 <script type="text/javascript" src="/resources/js/httpRequest.js"></script> 
 	<!--Alert 디자인 라이브러리 -->
   	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>


</script>
</head>
<body>
<form action="#" method="post" class="container" style="margin:0 auto;padding:50px">
	 <div class="card position-relative">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">입양신청 결과</h6>
                  
                </div>
                <div class="card-body">
                  <div class="mb-3">
                    <code>Current members : ${idCount } member</code><br><br>
                    <p class="mb-0 small"><code>Note:</code> 입양허가 : 같은 유기견의 입양신청인  총 <code>${dogClaimCnt }</code>의 게시글이 삭제되엇습니다</p>
                  </div>
                  <div class="small mb-1"><i class="fas fa-user fa-sm text-gray-300"></i>&nbsp;&nbsp;입양 신청 허가 회원</div><hr>                  
                                  
                              
                  <div class="navbar-light bg-light mb-4" style="padding:0 0 0 10px; height:240px; width:400px;" id="memberContent" >   
                  <br>
                  <!-- 반복문 하기 -->
                  <!-- 아이디 -->
                   <c:forEach items="${userid }" var="d">
                   <label for="${d }">&nbsp;                  
                    <a class="navbar-brand" href="#" id="${d }"> &nbsp;&nbsp;${d }</a><i class="fas fa-check-circle fa-sm text-gray-300"></i></label><br>
                    </c:forEach>                       
                </div>
                 
              </div>
              </div>
</form>

</body>
<!-- Bootstrap core JavaScript-->
  <script src="/resources/AdminTemplate/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/AdminTemplate/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="/resources/AdminTemplate/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/resources/AdminTemplate/js/sb-admin-2.min.js"></script>
  
  


</html>