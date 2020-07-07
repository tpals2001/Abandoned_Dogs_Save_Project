<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<!-- ------------------ BX 슬라이더 라이브러리 ----------------------- -->
	<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<!-- bx 슬라이더 function -->
<script>
    $(document).ready(function(){
    	//사이트 소개 슬라이더
	    $('.slider').bxSlider({
	    	auto:true,
	    	pause:2000,
	    	autoHover: true
	    });
    	//공고일 슬라이더
    	$('.dogslider').bxSlider({   		
    		minSlides: 1,
    		maxSlides: 6,
    		slideWidth:255,
    		slideMargin:30,
    		moveSlides:1,
    		pager:false,
    		shrinkItems:true
    	});
    });
</script>



</head>
<body>
<div class="section">

<!-- bx슬라이더 -->
<div class="slider">
    <div><img alt="" src="/resources/dog1.jpg"></div>
    <div><img alt="" src="/resources/dog2.jpg"></div>
    <div><img alt="" src="/resources/hi.jpg"></div>
	<div><img alt="" src="/resources/dog2.jpg"></div> 
</div>
<br><br>

<div class="dog_title01">
<h2>가족찾기</h2>
</div>
<hr>
<div class="dogslider">
 	<img alt="" src="/resources/dog1.jpg">
	<img alt="" src="/resources/dog2.jpg">
    <img alt="" src="/resources/hi.jpg">
	<img alt="" src="/resources/dog2.jpg">
  	<img alt="" src="/resources/dog1.jpg">
  	<img alt="" src="/resources/dog2.jpg">
   	<img alt="" src="/resources/hi.jpg">
	<img alt="" src="/resources/dog2.jpg">
</div>
<br><br><br><br><br>
<!-- 여기까지 -->

<!-- 사이트소개글 start -->
<section id="section-1" >
<h2>사이트 소개글</h2>
<p class="padding-top10">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tempor felis arcu, eu varius arcu condimentum imperdiet. Praesent viverra lorem nec purus lobortis, at vehicula mauris accumsan. Nullam fringilla nulla sed rhoncus sollicitudin. Cras gravida tortor at dignissim dapibus. Phasellus quis dolor diam. Vivamus accumsan purus lectus, in scelerisque ex lacinia ut. Aenean mollis bibendum tortor, id luctus erat viverra in. Morbi arcu ligula, pulvinar in pharetra vitae, gravida vel nulla.

Suspendisse potenti. Aenean vel ex id massa venenatis sollicitudin ut ut lacus. Sed pulvinar risus consequat urna ornare consequat. In id magna sed eros aliquet faucibus. Quisque eu massa urna. Mauris rhoncus urna lacus, ut porta ipsum dignissim eu. Sed fringilla dui tempus diam faucibus fringilla. Vestibulum varius scelerisque libero ut mattis. Aliquam lectus risus, sagittis non nibh nec, dapibus aliquet nisl. Maecenas mollis ornare nisi id facilisis. Mauris egestas rhoncus turpis, ac rutrum dolor viverra ac. Praesent in ligula tincidunt, accumsan erat quis, fermentum neque.

Etiam id nisl dolor. Sed in elit eros. Maecenas pharetra dapibus lacus, id ornare orci pharetra id. Aliquam urna enim, finibus a maximus molestie, pharetra et arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam elit felis, posuere et turpis sed, blandit tincidunt velit. Nulla dignissim sem nulla. Aenean condimentum auctor lobortis. Donec feugiat commodo dui, sed rutrum arcu bibendum quis. Quisque vel erat fermentum, tincidunt urna eu, faucibus erat. Praesent posuere, ipsum semper luctus vehicula, justo urna suscipit ex, id pulvinar magna eros id lorem.

Suspendisse a ipsum ligula. Mauris mollis risus a turpis ultrices, non elementum ligula pulvinar. Praesent at varius ipsum, nec viverra est. Sed id magna tortor. Aenean sit amet dui odio. Aenean a lacus venenatis, molestie nibh vitae, laoreet diam. Aliquam erat volutpat.

Duis ut metus enim. Proin quis gravida purus, eget viverra felis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla facilisi. Quisque condimentum tristique tortor nec sodales. Duis pellentesque magna sapien, et lacinia magna commodo eget. Fusce a libero pretium, varius ante ac, volutpat justo. Pellentesque diam sem, elementum eget est sed, ullamcorper tempor neque. Morbi maximus ligula tristique lorem fermentum lobortis. Cras sagittis eget urna sit amet vestibulum. Duis sit amet tempor justo. Donec sit amet finibus odio. Phasellus id gravida lorem.</p>

</section>
<!-- 사이트소개 end -->


<!-- 입양안내 start -->
<section id="section-2">
<h2>입양안내</h2>
<img alt="입양안내" src="../resources/section_01.jpg" class="section_img">
</section>
<!-- 입양안내 end  -->
</div>
</body>
</html>