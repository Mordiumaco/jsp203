<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Jsp</title>
<%@ include file="/common/basicLib.jsp" %>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	//주소 검색 버튼 클릭이벤트가 발생 했을때 실행
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
        	console.log(data);
            //주소 : roadAddress
            //상세주소 : ""
            //우편번호 : zonecode
        	
        }
    }).open();
</script>
</head>

<body>
<%--header --%>
<%@ include file="/common/header.jsp" %>	

<div class="container-fluid">
		<div class="row">
		
<%--left --%>
<%@ include file="/common/left.jsp" %>			
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				


<div class="row">

	<div class="col-sm-8 blog-main">

		<div class="blog-post">
			<form class="form-horizontal" role="form">
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">사용자 아이디</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="userId" name="userId"
								placeholder="사용자 아이디">
						</div>
					</div>
	
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">사용자 비밀번호</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="password" name="password"
								placeholder="Password">
						</div>
					</div>

					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">사용자 이름</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="name" name="name"
								placeholder="사용자 이름">
						</div>
					</div>
					
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">주소</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="addr1"
								name="addr1" placeholder="주소">
							<input type="text" class="form-control" id="addr2"
								name="addr2" placeholder="상세주소">
						</div>
					</div>
					
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">우편번호</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="zipcd" name="zipcd"
								placeholder="우편번호">
						</div>
					</div>
					
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">생년월일</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="birth" name="birth"
								placeholder="생년월일">
						</div>
					</div>
					
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">이메일</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="email" name="email"
								placeholder="이메일">
						</div>
					</div>
					
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">전화번호</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="tel" name="tel"
								placeholder="전화번호">
						</div>
					</div>
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">사용자 등록</button>
						</div>
					</div>
					<a class="btn btn-default pull-right" href="/userForm">작성 완료</a>
				</form>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-sm-8 blog-main">
		

	
		
	</div>
</div>

</body>
</html>