<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="kr.or.connect.todo.dto.TodoDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>TO-DO List</title>
<link href="static/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div class="header">
	<div class="title">
		나의 해야할 일들
	</div>
	<span class="addbtn" onclick="location.href='form'">새로운 TODO 등록</span>
</div>

<div class="contents">

	<table class="list">
		<tbody class="done-list">
			<tr>
				<th class="theader">DONE</th>
			</tr>
			<c:forEach var="list" items="${list}">
				<c:if test="${list.type == 'DONE'}">
					<tr>
						<td>
							<h2>${list.title}</h2>
							등록날짜:${list.regDate}, ${list.name }, 우선순위 ${list.sequence}
						</td>
					</tr>
				</c:if>
			</c:forEach>
		</tbody>
	</table>
	
	<table class="list">
		<tbody class="doing-list">
			<tr>
				<th class="theader">DOING</th>
			</tr>
			<c:forEach var="list" items="${list}">
				<c:if test="${list.type == 'DOING'}">
					<tr>
						<td>
							<h2>${list.title}</h2>
							등록날짜:${list.regDate}, ${list.name }, 우선순위 ${list.sequence}
							<button class="btn_next" onclick="btnClick(this, '${list.id}', '${list.type}')">→</button>
						</td>
					</tr>
				</c:if>
			</c:forEach>
		</tbody>
	</table>
	
	<table class="list">
		<tbody class="todo-list">
			<tr>
				<th class="theader">TODO</th>
			</tr>
			<c:forEach var="list" items="${list }">
				<c:if test="${list.type == 'TODO'}">
					<tr>
						<td>
							<h2>${list.title}</h2>
							등록날짜:${list.regDate}, ${list.name }, 우선순위 ${list.sequence}
							<button class="btn_next" onclick="btnClick(this, '${list.id}', '${list.type}')">→</button>
						</td>
					</tr>
				</c:if>
			</c:forEach>
		</tbody>
	</table>
	
</div>

<!-- javascript -->
<script type="text/javascript" src="static/main.js"></script>

</body>
</html>
