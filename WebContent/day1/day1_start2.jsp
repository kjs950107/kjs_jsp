<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
// ��Ʈ�� Ʈ�� : html �����ȿ��� �ڹ��ڵ尡 �ۼ��Ǵ� �κ�.
String[] names = {"�ڼ���", "����", "�迬��"};
for(int i=0; i<names.length;i++){

%>
<!--html �±׸� �ۼ� ����  -->
<li>
<%= names[i] %>
</li>
<%
}

%>
</body>
</html>