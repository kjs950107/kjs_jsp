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
MyUser sana = new MyUser("김사나", 24, "서울시 구로구");
list.add(sana);
list.add(new MyUser("정연", 19,"서울서 종로구"));
list.add(new MyUser("모모", 25,"경기도 성남시"));
list.add(new MyUser("나연", 17,"서울시 용산구"));

%>
<table style="width : 70%;margin: auto; border-collapse=collapse;">
<caption>현재 시간 : <%=LocalDate.now() %></caption>
<tr>
<th>이름</th>
<th>나이</th>
<th>거주지</th>
</tr>
<tr>
<%for(MyUser a : list) {%>

<td><%=a.getName()%></td>
<td><%=a.getAge() %></td>
<td><%=a.getAddress() %></td>
<td>
<%
if (a.getAge()<20) out.print("청소년");
%>
</td>
<%}%>
</tr>

</table>
</body>
</html>