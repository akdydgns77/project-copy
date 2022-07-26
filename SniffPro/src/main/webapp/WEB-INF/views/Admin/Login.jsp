<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List,Pkg.Admin.DTO.UserDTO, Pkg.Admin.Service.UserLoginServiceImpl" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 후</title>

	<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
  

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="jscss/js/common.js"></script>
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>

<style>

	.submitBtn{
				width: 200px;
			    font-size: 14px;
			    color: white;
    			background-color: #989898;
			    padding: 6px;
			    margin-left:2px;
			    border-radius: 5px;
			    border: none;
	}
	
	.box1{
			display:block;
            width:200px;
            margin-left:10px;
            padding:10px;
            border:1px solid black;
	}
	
	.box2{
			display:flex;
			width:150px;
			margin:0px;
			padding:2px 5px 3px 5px;
			border:1px;
	}
	
	.box3{
			display:flex;
			width:200px;
			padding:2px 5px 3px 0px;
			border:0px;
	}
	

</style>


<%
	
	//List<UserLoginServiceImpl> uName = //(List<UserLoginServiceImpl>)request.getAttribute("uName");
String name=(String)request.getAttribute("name");
%>

</head>


<body>

	<div class="box1">
		<span class="box2">
			<%=name %>님
		</span>
		<span class="box2">반갑습니다.</span>
		<span class="box3">
			<input type="button" class="submitBtn" value="CART" />
		</span>
		<span class="box3">
			<input type="button" class="submitBtn" value="LOGOUT" />
		</span>
	</div>

</body>
</html>




