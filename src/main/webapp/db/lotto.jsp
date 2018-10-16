<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>lotto.jsp</title>
</head>
<body>

	<canvas id="myCanvas" width="200" height="200" style="border: 1px solid #000000"></canvas>
	
</body>
<script type="text/javascript">
	var canvas = document.getElementById("myCanvas")
	var ctx = canvas.getContext("2d");
	/* 
	//사각형 그리기
	ctx.fillStyle = "#FF0000";
	ctx.fillRect(0,0,150,150);
	
	*/
	
	//원 그리기
	ctx.beginPath();
	ctx.arc(100,100,100,0,2*Math.PI);
	ctx.stroke();
	
	ctx.font = "60px Arial";
	ctx.fillText("Brown",15, 125);
</script>
</html>