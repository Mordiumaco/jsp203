<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="icon/favicon.ico">
    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- 쿠키 라이브러리 -->
    <script src="https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>
	<script type="text/javascript">
		$(function(){
			console.log("test");
			
			//remember 쿠키값이 Y이면
			//remember.me 체크박스 체크 
			//userId input value를 쿠키 값으로 설정 
			
			if(getCookie("remember")=="Y"){
				$("#remember").attr("checked",true)
			}
			
			$("#userId").attr("value", getCookie("userId"));
			
			
		});
	
		//쿠키인자를 자바스크립트로 받아보자
		function getCookie(cookieName){
			
			//cookieString --> document.cookie
			var cookies = document.cookie.split("; ");
			
			var cookieValue = "";
			//for(var str : cookies){
			for(var i = 0; i < cookies.length; i++){
				var str = cookies[i];
				if(str.startsWith(cookieName + "=")){
					cookieValue = str.substring((cookieName+"=").length)
				}
			}
			
			return cookieValue; 
		}	
	
	</script>
    <title>Hello DDIT</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
	
    <div class="container">

      <form class="form-signin" action="/JSPLoginServlet" method="post">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="text" name="id" id="userId" class="form-control" value="" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="password" class="form-control" value="brownpass" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input id="remember" type="checkbox" name="remember-me" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->
	<%	
		
	%>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
