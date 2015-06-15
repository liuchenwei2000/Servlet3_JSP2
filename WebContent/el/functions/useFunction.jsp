<%@ page contentType="text/html;charset=GBK" language="java" %>

<%-- 一样需要先导入标签库，然后再使用函数，使用方式和自定义标签类似。 --%>
<%@ taglib prefix="myfunction" uri="http://taglib.myfunction.com" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			表达是语言————自定义函数
		</title>
	</head>
	<body>
		<%-- 语法是 ${prefix: function-name(arg)} --%>
		<p>${myfunction:lower("Hello World")}</p>
		<p>${myfunction:upper("Hello World")}</p>
		<p>${myfunction:upper(header["host"])}</p>
	</body>
</html>