<%@page import="java.time.LocalDate"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
<% 
List<MyUser> list = new ArrayList<>();
MyUser sana = new MyUser("��糪", 24, "����� ���α�");
list.add(sana);
list.add(new MyUser("����", 19,"���Ｍ ���α�"));
list.add(new MyUser("���", 25,"��⵵ ������"));
list.add(new MyUser("����", 17,"����� ��걸"));

%>
<table style="width : 70%;margin: auto; border-collapse=collapse;">
<caption>���� �ð� : <%=LocalDate.now() %></caption>
<tr>
<th>�̸�</th>
<th>����</th>
<th>������</th>
</tr>
<tr>
<%for(MyUser a : list) {%>

<td><%=a.getName()%></td>
<td><%=a.getAge() %></td>
<td><%=a.getAddress() %></td>
<td>
<%
if (a.getAge()<20) out.print("û�ҳ�");
%>
</td>
<%}%>
</tr>

</table>
</body>
</html>