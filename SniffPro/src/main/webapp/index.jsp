<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 전</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>

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
			height: 25px;
			margin:0px;
			padding:5px 5px 10px 5px;
			border:1px;
	}
	
	.box3{
			display:flex;
			width:200px;
			padding:2px 5px 3px 0px;
			border:0px;
	}

</style>

<script>
$(function(){
	$("#btnLogin").click(function(){
		userid=$("#usignId").val();
		var passwd=$("#uPass").val(); 
		
		if(userid == ""){
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
</head>
<body>
<form name="form1" method="post">
	<div class="box1">
		<span class="box2">
			&nbsp;&nbsp;&nbsp;ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;<input type="text" id="usignId" name="usignId" size="18">
		</span>
		<span class="box2">
			PASS&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;<input type="password" id="uPass" name="uPass" size="18">
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

</body>
</html>