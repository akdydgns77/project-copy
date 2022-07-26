<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="resources/jQuery/jquery-3.4.1.min.js"></script>

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

</head>
<body>

	
<form action="loggout.do" method="post">
	<div class="box1">
		<span class="box2">oo님</span>
		<span class="box2">반갑습니다.</span>
		<span class="box3">
			<input type="submit" class="submitBtn" value="CART" />
		</span>
		<span class="box3">
			<input type="submit" class="submitBtn" value="LOGOUT" />
		</span>
	</div>
</form>
</body>
</html>




