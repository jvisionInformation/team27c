<!-- team27c �ռ���  -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>  
<%@ page import="service.SingerDao" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>deleteSingerAction.jsp</title>
</head>
<body>
		<%
			int singerId = Integer.parseInt(request.getParameter("singerId"));
			System.out.println(singerId+":���");
			
			SingerDao singerdao = new SingerDao();
			singerdao.DeleteSinger(singerId);
	
			response.sendRedirect(request.getContextPath()+"/singerList.jsp");
		
			
		
		
		%>
		
</body>
</html>