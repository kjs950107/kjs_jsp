<%@page import="test.MyUser"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>start3</title>
<style type="text/css">
td {
	
}
</style>
</head>

<body>
<% MyUser sana = new MyUser("김사나", 24, "서울시 구로구"); %>
<table style="width : 70%;margin: auto; border-collapse=collapse;">
<tr>
<th>이름</th>
<th>나이</th>
<th>거주지</th>
</tr>
<tr>
<td><%=sana.getName() %></td>
<td><%=sana.getAge() %></td>
<td><%=sana.getAddress() %></td>
</tr>

</table>
</body>
</html>