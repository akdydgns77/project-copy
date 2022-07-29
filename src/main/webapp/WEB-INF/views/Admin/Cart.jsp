<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, Pkg.Admin.CartsDTO.CartListDTO, Pkg.Admin.CartsService.CartServiceImpl" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="jscss/js/common.js"></script>

<title>장바구니</title>

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
		width:800px;
		padding:50px 5px 10px 10px;
		justify-cotent:center;
	}
	#show{
		display:flex;
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
	
	.box3,
	.row{
		display:flex;
		border-bottom:solid 1px black;
		border-top:solid 1px black;
		width: 700px;
		height:40px;
		padding:0px 20px;
	}
	
	.col1{
		display:flex;
		border:solid 0px red;
		align-items: center;
		justify-content:center;
	}
	.col12{
		display:flex;
		width:50px;
		height:70px;
		border:solid 0px red;
		align-items:center;
		justify-content:center;
	}
	.col2{
		display:flex;
		width:150px;
		border:solid 0px red;
		height:40px;
		align-items:center;
		justify-content:center;
	}
	
	.row{
		display:flex;
		font-size:13px;
		height:70px;
		align-items:center;
		justify-content:center;
	}
	
	.delButton {
		display:flex;
	}
</style>
	
</head>

<script>

	$()
	
	$(document).ready(
		function() {
			$("#AllChk").on("click",
					function() {
					if($(this).prop("checked")) {
						$("input[name='chk']").prop("checked", true);
					}
					else{
						$("input[name='chk']").prop("checked", false);
					}
				}		
				);
		}		
	);

</script>

<body>

<%

	List<CartListDTO> cartList = (List<CartListDTO>)request.getAttribute("cartList");
	
%>
	<div id="wrap">
		<!-- 장바구니 시작 -->
		<div id="sideMenu">
			<span id="show">
				<a id="cart" href="CartList">장바구니</a>
			</span>
		</div>
		<div id="allBox">
			<!-- 상단 시작 -->
			<div id="boxwrap">
				<div id="box3" class="box3">
					<span class="col1" style="width:40px;"><input type="checkbox" id="AllChk" name="AllChk" value=""/></span>
					<span id="itemNum" class="col1" style="width:67px;">NO</span>
					<span id="itemName" class="col1" style="width:250px;">상품정보</span>
					<span id="price" class="col1" style="width:250px;">상품금액</span>
					<span id="qty" class="col1" style="width:70px; margin-left:-10px;">수량</span>
					<span id="totalPrice" class="col1" style="width:200px; margin-right:-15px">총금액</span>
				</div>
				
				<!-- 반복되는 구간 (장바구니 상품)시작-->
			<%
			int i = 1;
			for(CartListDTO dto : cartList) { %>
					<div class="row">
						<span class="col12"><input type="checkbox" name="chk"/></span>
						<span id="itemNum" class="col12" style="font-size:15px;"><%=i %></span>
						<span id="itemImage" class="col2"><%=dto.getSaveName() %></span>
						<span id="itemInfo" class="col2"><%=dto.getpName() %></span>
						<span id="price" class="col2"><%=dto.getsPrice() %></span>
						<span id="qty" class="col2"><%=dto.getcQty() %></span>
						<span id="totalPrice" class="col2" style="font-size:15px;"><%=dto.getsPrice() * dto.getcQty() %></span>
					</div>
			<%
				i += 1;
			} %>
				<!-- 반복되는 구간 (장바구니 상품)끝 -->
			<!-- 상단 끝 -->
			
			<!-- 총금액 -->
			<div class="tPrice">
				<div id="totle"
			</div>
			
			<!-- delete button 시작-->
			<div class="delButton">
				<div id="delForm"><input type="button" id="delBtn" name="delBtn" value="삭제"/></div>
			</div>
			<!-- delete button 끝-->
			
			</div>
		
		</div>
		<!-- 장바구니  -->
	</div>
</body>
</html>