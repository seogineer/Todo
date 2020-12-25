<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>할일 등록</title>
<link href="static/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="formContents">
	<h1>할일 등록</h1>
	<form action="add" onsubmit="return validForm()" method="post">
		<span class="semiTitle">어떤일인가요?</span><br>
		<p><input id="formTodo" class="formTodo" name="formTodo" maxlength="24" placeholder="swift 공부하기(24자까지)" required></p>

		<span class="semiTitle">누가 할일인가요?</span><br>
		<p><input id="formName" class="formName" name="formName" placeholder="홍길동" required></p>
		
		<span class="semiTitle">우선순위를 선택하세요.</span><br>
		<input name="sequence" type="radio" value="1">1순위&nbsp;&nbsp;
		<input name="sequence" type="radio" value="2">2순위&nbsp;&nbsp;
		<input name="sequence" type="radio" value="3">3순위&nbsp;&nbsp;	
		<br>
		<br>
		<div>
			<input class="prevBtn" type="button" value="&lt; 이전" onclick="location.href='main'">
			<span class="rightBtn">
				<input class="submitBtn" type="submit" value="제출">
				<input class="clearBtn" type="reset" value="내용지우기">
			</span>
		</div>
	</form>
</div>

<!-- javascript -->
<script type="text/javascript" src="static/form.js"></script>

</body>
</html>