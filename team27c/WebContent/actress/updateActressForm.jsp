<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="service.ActressDao"%>
<%@page import="service.Actress"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Team27c</title>
</head>
<body>
	<h1>Actress Update Form</h1>
	<form action="<%=request.getContextPath()%>/actress/updateActressAction.jsp" method="post">
		<table border="1">
			<thead>
				<tr>
					<th>여배우번호</th>
					<th>여배우이름</th>
					<th>여배우나이</th>
				</tr>
			</thead>
			<%
				/* 수정버튼을 눌렀을때 넘어오는값 actressId 의값을 받아온다. */
				int actressId = Integer.parseInt(request.getParameter("actressId"));
				System.out.println(actressId);
				ActressDao actressDao = new ActressDao();
				Actress actress = new Actress();
				/*  actressDao 객체참조변수를 통해 주솔르 찾아가 SelectUpdateActress메서드를 실행하고
				actressId매개변수로 넘겨준다.*/
				actress = actressDao.SelectUpdateActress(actressId);
			%>
			<tbody>
				<tr>
					<td><input type="text" name="actressId"value="<%=actress.getActressId()%>" readonly></td>
					<td><input type="text" name="actressName"value="<%=actress.getActressName()%>"></td>
					<td><input type="text" name="actressAge"value="<%=actress.getActressAge()%>"></td>
					<td><input type="submit" value="수정완료"></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>