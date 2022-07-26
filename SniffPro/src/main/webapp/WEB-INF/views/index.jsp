<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.util.ArrayList, Pkg.Admin.DTO.*, Pkg.Admin.DAO.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>

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
margin:0px 0px 0px 8px;
padding:0px 0px 0px 6px;
display:block;
height:30px;
float:left;
font-size:23px;


}

.board{
 width:930px;
 display:block;
 border:1px solid blue;
float:right;
position:relative;
bottom:5px;
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

</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="jscss/js/common.js"></script>
<script>


</script>
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
			<span class="box">login</span>
			<span class="box2">전체글</span>
			<div class="board" id="notice">
				<span class="col1" style="text-align:center">글번호</span>
				<span class="col2">글제목</span>
				<span class="col3">작성자</span>
				<%
				
					for(BoardDTO dto:BoardList){
						
				%>
				<span class="col1"><%=dto.getbIdx()%></span>
				<span class="col2"><a href="?idx=<%=dto.getbIdx() %>>" style="text-decoration: none; color:black"><%=dto.getbTitle()%></a></span>
				<span class="col3"><%=dto.getUsignId()%></span>
				<%} %>
				
				
			</div>
		</div>
	
</body>
</html>