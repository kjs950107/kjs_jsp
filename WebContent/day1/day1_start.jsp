<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<ul>
<%
// ��Ʈ�� Ʈ�� : html �����ȿ��� �ڹ��ڵ尡 �ۼ��Ǵ� �κ�.
String[] names = {"�ڼ���", "����", "�迬��"};
for(int i=0; i<names.length;i++){
	out.print(names[i]);
	out.print("<br>");
	out.print("<li>");
	out.print(names[i]);
	out.print("</li>");

}
%>
</ul>
</body>
</html>