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
// 스트립 트릿 : html 문서안에서 자바코드가 작성되는 부분.
String[] names = {"박세리", "허재", "김연경"};
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