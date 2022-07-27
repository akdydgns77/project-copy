<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>startPage</title>
</head>
<style>
	#sideMenu{
		display:flex;
		border:solid 1px black;
		width:200px;
		height:200px;
		float:left;
	}
	#allBox{
		display:flex;
		border:solid 1px black;
		width:600px;
		height:500px;
		padding:50px 10px 10px 10px;
	}
	#cart{
		display:flex;
		color:white;
		width:150px;
		height:40px;
		align-items:center;
		justify-content:center;
		text-decoration-line:none;
		background-color:gray;
	}
	
	#box1{
		display:flex;
		border:solid 1px black;
		width:600px;
		height:400px;
		padding:50px;
		margin-left:19%;
	}
	
	.box3{
		display:flex;
		border-bottom:solid 1px black;
		border-top:solid 1px black;
		width: 550px;
		padding:0px 20px;
	}
	
	.col1{
		display:flex;
		width:150px;
		border:solid 0px red;
		align-items: center;
	}
	.col2{
		display:flex;
		width:150px;
		border:solid 0px red;
		height:30px;
		align-items:center;
	}
</style>
<body>
	<div id="wrap">
		<div id="sideMenu">
			<span id="cartBtn">
				<a id="cart" href="cart">장바구니</a>
				
			</span>
		</div>
		<!-- 장바구니 시작 -->
		<div id="allBox">
			
		</div>
		<!-- 장바구니  -->
	</div>
</body>
</html>