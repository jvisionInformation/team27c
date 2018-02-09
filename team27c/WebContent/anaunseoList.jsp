<!-- team27 도정만 -->


<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="service.AnaunseoDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="service.Anaunseo" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"> 
<title></title>
</head>
<body>
<table width="100%" border="1">

<tr>
	<td>아이디</td><td>이름</td><td>나이</td>
</tr>
<%
/*	AnaunseoDao 클래스의 selectAnaunseoList 메서드를 호출하기 위해 
	new AnaunseoDao()를 통해 객체를 생성해주고 참조값을 AnaunseoDao 클래스 타입의 
	anaunseo 객체 참조변수에 할당한다.
 */
	ArrayList<Anaunseo> list = new ArrayList<Anaunseo>();
	AnaunseoDao anaunseo = new AnaunseoDao();
/* 	anaunseo 할당된 참조값을 찾아가 selectAnaunseoList() 
	메서드를 실행후  메서드 호출한 곳으로 return을 받고 그값을
	ArrayList<Anaunseo>타입의 list에 할당한후
	for문을 돌려 차례대로 출력한다.
 */
	list = anaunseo.selectAnaunseoList();


	for(Anaunseo ana : list) {
%> 
	<tr>
		<td><%= ana.getAnaunseoId() %></td>
		<td><%= ana.getAnaunseoName() %></td>
		<td><%= ana.getAnaunseoAge() %></td>
	<tr>
<%
	}
%>
</table>
</body>
</html>