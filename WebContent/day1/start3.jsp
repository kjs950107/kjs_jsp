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
<% MyUser sana = new MyUser("��糪", 24, "����� ���α�"); %>
<table style="width : 70%;margin: auto; border-collapse=collapse;">
<tr>
<th>�̸�</th>
<th>����</th>
<th>������</th>
</tr>
<tr>
<td><%=sana.getName() %></td>
<td><%=sana.getAge() %></td>
<td><%=sana.getAddress() %></td>
</tr>

</table>
</body>
</html>