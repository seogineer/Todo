<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ���</title>
<link href="static/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="formContents">
	<h1>���� ���</h1>
	<form action="add" onsubmit="return validForm()" method="post">
		<span class="semiTitle">����ΰ���?</span><br>
		<p><input id="formTodo" class="formTodo" name="formTodo" maxlength="24" placeholder="swift �����ϱ�(24�ڱ���)" required></p>

		<span class="semiTitle">���� �����ΰ���?</span><br>
		<p><input id="formName" class="formName" name="formName" placeholder="ȫ�浿" required></p>
		
		<span class="semiTitle">�켱������ �����ϼ���.</span><br>
		<input name="sequence" type="radio" value="1">1����&nbsp;&nbsp;
		<input name="sequence" type="radio" value="2">2����&nbsp;&nbsp;
		<input name="sequence" type="radio" value="3">3����&nbsp;&nbsp;	
		<br>
		<br>
		<div>
			<input class="prevBtn" type="button" value="&lt; ����" onclick="location.href='main'">
			<span class="rightBtn">
				<input class="submitBtn" type="submit" value="����">
				<input class="clearBtn" type="reset" value="���������">
			</span>
		</div>
	</form>
</div>

<!-- javascript -->
<script type="text/javascript" src="static/form.js"></script>

</body>
</html>