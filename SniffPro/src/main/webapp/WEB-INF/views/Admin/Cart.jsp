<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 상단 시작 -->
	<div id="boxwrap">
		<div class="box3">
			<span class="col21"><input type="checkbox" id="AllChk" name="AllChk"/></span>
			<span id="itemImage" class="col1"></span>
			<span id="itemInfo" class="col1">상품정보</span>
			<span id="price" class="col1">상품금액</span>
			<span id="qty" class="col1">수량</span>
			<span id="totalPrice" class="col1">총금액</span>
		</div>
		<!-- 반복되는 구간 (장바구니 상품)시작 -->
		<div class="box3">
			<span class="col21"><input type="checkbox" id="chk" name="chk"/></span>
			<span id="itemImage" class="col2">상품 사진</span>
			<span id="itemInfo" class="col2">상품정보</span>
			<span id="price" class="col2">5000원</span>
			<span id="qty" class="col2">5개</span>
			<span id="totalPrice" class="col2">25000원</span>
		</div>
				<!-- 반복되는 구간 (장바구니 상품)끝 -->
			<!-- 상단 끝 -->
	</div>
</body>
</html>