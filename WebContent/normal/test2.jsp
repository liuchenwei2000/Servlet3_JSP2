<%@page contentType="text/html; charset=GBK" %>
<!DOCTYPE html>
<html>
<head>
<title>本页面的EL应该是有效的</title>
</head>
<body>
	<h3>下面是表达式语言输出：</h3>
		${1 + 2}
	<br><br>
	下面是小脚本输出：<br>
	<% 
		out.println("Hello World");
	%>
</body>
</html>