<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="user.dog.dto.UserLike"%>
<%UserLike userList= (UserLike)request.getAttribute("userLike");  %>

<style>


</style>
<!-- 자바스크립트 -->
<script>
var element = $(".blink");
var shown = true;

setInterval(toggle, 400);

function toggle() {
   if(shown) {
       element.hide();
       shown = false;
   } else {
       element.show();
       shown = true;
   }
}
</script>

<script>
$(document).ready(function(){	

});

totalPage = '${paging.totalPage }'

<c:if test="${not empty login }">

// 체크박스 체크시 이벤트
function Chkevent(dogno){
	 var chk=document.getElementById(dogno);
	 var userid = "${userid}";
	 if(chk.checked==true){
		 $.post("/dog/doglikeInsert",{"dogno":dogno,"userid":userid},function(res){		        	
	        	swal({				
		   			  icon: "success",
		   			  text: "강아지 관심목록에 추가되었습니다"
		   			});	
	 })
	 }
	 else{
		 $.post("/dog/doglikeDelete",{"dogno":dogno,"userid":userid},function(res){        	       	 
	        	 swal({				
		   			  icon: "info",
		   			  title: "주의",
		   			  text: "강아지 관심목록에서 제외됩니다!"			     
		     });	      
		});
	 }
	
}

</c:if>

</script>


<c:forEach items="${dogList }" var="dog">
<div class="box" id="one"style="border-radius:20px;">                                                      
   <a href="#" onclick="dogDetail(${dog.dogno })" ><img src="/upload/${dog.dog_stored_file_name }" alt="없음"  /></a>
   <div class="inner" style="text-align:left">
   <br>

   <ul style="padding:10px;">   
      <li style="color:#FFA07A;font-size:18px;font-weight:bold;line-height:5px;"> ${dog.dogname }&nbsp;&nbsp;&nbsp;&nbsp;            
       <!-- 하트 표시 -->         
    <div class="pretty p-image p-plain">
    <c:set var="sw" value="N"/>  
    <!--  채운 하트, 안채운 하트 구분 -->
    <c:forEach items="${userlike }" var="dogno">
    <%--값 있는 경우 체크 --%> 
    	<c:if test="${dogno.dogno eq dog.dogno }">
      	 	 <input type="checkbox" id="${dog.dogno }"onclick="Chkevent(${dog.dogno})" checked="checked" data-dogno="${dog.dogno }" class="doglikeChk" data-id=" <%=session.getAttribute("userid")%>"/>
       		 <c:set var="sw" value="Y"/>
        </c:if>
     </c:forEach>
     <%--값 없는경우 체크 x --%>			
        <c:if test="${sw eq 'N' }">
        	 <input type="checkbox" id="${dog.dogno }"  onclick="Chkevent(${dog.dogno})" data-dogno="${dog.dogno }" class="doglikeChk" data-id=" <%=session.getAttribute("userid")%>"/>
        </c:if>
        <div class="state">
            <img class="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Love_Heart_symbol.svg/591px-Love_Heart_symbol.svg.png">
            <label for="${dog.dogno }">Like</label>
        </div>
    </div>
     <hr>
      <li>성별 :  
	     <c:if test="${dog.doggender eq 'M' }" >수컷 </c:if>
	     <c:if test="${dog.doggender eq 'W' }">암컷</c:if>       
      </li>
      <li>견종 : ${dog.dogkind }</li>
      <li>중성화여부 : 
       <c:if test="${dog.dogneu eq 'Y'}" >Y </c:if>
	     <c:if test="${dog.dogneu eq 'N' }">N</c:if>       
       </li>
      <li>공고일 남은시일 :<span class="blink" style="color:#FF4500;font-weight:bold"> ${dog.dogenddate } 일!</span></li>
      </ul>
</div>
</div>
</c:forEach>
<script>
        function dogDetail(dogno){                   
            var url = "/dog/detailView?dogno="+dogno;
            var name = "";
            var option = "width = 1200, height = 800, top = 100, left = 100 "
            window.open(url, name, option);
        }
    </script>

















