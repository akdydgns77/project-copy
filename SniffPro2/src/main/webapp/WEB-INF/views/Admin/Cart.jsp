<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
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
	.col12{
		display:flex;
		width:50px;
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
			<!-- 상단 시작 -->
			<div id="boxwrap">
				<div class="box3">
					<span class="col12"><input type="checkbox" id="AllChk" name="AllChk"/></span>
					<span id="itemNum" class="col12">NO</span>
					<span id="itemImage" class="col1"></span>
					<span id="itemInfo" class="col1">상품정보</span>
					<span id="price" class="col1">상품금액</span>
					<span id="qty" class="col1">수량</span>
					<span id="totalPrice" class="col1">총금액</span>
				</div>
				<!-- 반복되는 구간 (장바구니 상품)시작 -->

				<div class="box3">
					<span class="col12"><input type="checkbox" id="chk" name="chk"/></span>
					<span id="itemNum" class="col12">1</span>
					<span id="itemImage" class="col2">상품 사진</span>
					<span id="itemInfo" class="col2">상품정보</span>
					<span id="price" class="col2">5000원</span>
					<span id="qty" class="col2">5개</span>
					<span id="totalPrice" class="col2">25000원</span>
				</div>

				<!-- 반복되는 구간 (장바구니 상품)끝 -->
			<!-- 상단 끝 -->
			</div>
		</div>
		<!-- 장바구니  -->
	</div>
</body>
</html>