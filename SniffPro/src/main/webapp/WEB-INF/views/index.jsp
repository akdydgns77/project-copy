<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.util.ArrayList, Pkg.Admin.DTO.*, Pkg.Admin.DAO.*" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="jscss/js/common.js"></script>
<script>
$(function(){
	$("#btnLogin").click(function(){
		 userid=$("#usignId").val();
		 var passwd=$("#uPass").val(); if(userid == ""){
		  alert("아이디를 입력하세요");
		  $("#usignId").focus(); //입력포커스 이동
		
		  return; //함수 종료
	}
	if(passwd==""){
	 alert("비밀번호를 입력하세요"); 
	 $("#uPass").focus();
	  return;
	}
	//폼 내부의 데이터를 전송할 주소
	 document.form1.action= "login_check.do";
	 document.form1.submit(); //제출
	 });
});
</script>
<style>
a{
text-decoration:none;
text-color:black;

}
#contentbox{
 width:1250px;
 height:1000px;
 border:1px solid green;
 display:block;
 margin:5px 0px 0px 86px;

}
#nav{
width:1250px;
height:40px;
border:1px solid black;
text-align:center;
margin:0px 0px 0px 86px;
}

#logobox{
width:200px;
height:100px;
border:1px solid black;
margin:0px 0px 10px 0px;
position:relative;
left:600px;
}

.navcol{
width:100px;
display:block;
border:0px solid yellow;
vertical-align:middle;
float:left;
margin:10px 10px 0px 35px;

}

.box{

width:300px;
height:398px;
display:block;
border:1px solid blue;
float:left;


}
.box2{
width:930px;
border:0px solid red;
display:block;
height:30px;
font-size:23px;
position:relative;
left:280px;
bottom:130px;


}

.board{
 width:930px;
 display:block;
 border:1px solid blue;
float:right;
position:relative;
right:40px;
bottom:130px;
margin:5px 2px 0px 0px
}

.col1{
display:block;
width:60px;
border:1px solid black;
float:left;

}

.col2{
border:1px solid black;
width:734px;
display:block;
text-align:center;
float:left;

}

.col3{
border:1px solid black;
width:130px;
display:block;
text-align:center;
float:left;
}

.box3{
			display:flex;
			width:150px;
			height: 25px;
			margin:0px;
			padding:5px 5px 10px 5px;
			border:1px;
	}

.box4{
			display:block;
            width:200px;
            margin-left:10px;
            padding:10px;
            border:1px solid black;
            position:relative;
            top:10px;
}

.submitBtn{
				width: 200px;
				height: 35px;
			    font-size: 14px;
			    color: white;
    			background-color: #989898;
			    padding: 6px;
			    margin-left:2px;
			    border-radius: 5px;
			    border: none;
	}

</style>

</head>
<body>
<%
	
	ArrayList<BoardDTO> BoardList=(ArrayList<BoardDTO>)request.getAttribute("BoardList");
	

%>
		<div id="logobox">
			<span>로고</span>
		</div>
	
	
		<div id="nav">
			<span class="navcol" style="margin-left:190px"><a href="Adoption">입양/분양</a></span>
			<span class="navcol"><a href="Product">상품</a></span>
			<span class="navcol"><a href="Review">후기</a></span>
			<span class="navcol"><a href="Volunteer">봉사</a></span>
			<span class="navcol"><a href="News">소식</a></span>
			<span class="navcol"><a href="Declaration">유기동물신고</a></span>
		</div>
		
		<div id="contentbox">
			<form name="form1" method="post">
				<div class="box4">
					<span class="box3">
						&nbsp;&nbsp;&nbsp;ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;<input type="text" id="usignId" name="usignId" size="17">
					</span>
					<span class="box3">
						PASS&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;<input type="password" id="uPass" name="uPass" size="17">
					</span>
					<span>
						<input type="submit" id="btnLogin" class="submitBtn" value="LOGIN" />
						<c:if test="${message == 'error'}">
							<script type="text/javascript">
								alert("아이디 또는 비밀번호가 일치하지 않습니다.");
							</script>
						</c:if>
					</span>
				</div>
			</form>
			
			<span class="box2">전체글</span>
			<div class="board" id="notice">
				<span class="col1" style="text-align:center">글번호</span>
				<span class="col2">글제목</span>
				<span class="col3">작성자</span>
				<%
				
					for(BoardDTO dto:BoardList){
						
				%>
				<span class="col1"><%=dto.getbIdx()%></span>
				<span class="col2"><a href="ShowBoard" style="text-decoration: none; color:black"><%=dto.getbTitle()%></a></span>
				<span class="col3"><%=dto.getUsignId()%></span>
				<%} %>
				
				
			</div>
		</div>
	
</body>
</html>
