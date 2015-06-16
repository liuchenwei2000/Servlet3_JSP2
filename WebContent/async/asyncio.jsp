<%@ page contentType="text/html;charset=GBK" language="java" session="false" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			异步IO目标页
		</title>
	</head>
	<body>
		<%
			out.println("浏览器提交的数据为：" + request.getAttribute("data"));
			out.println("</br>业务调用结束时间：" + new java.util.Date());
			if(request.isAsyncStarted()) {
				request.getAsyncContext().complete();
			}
		%>
	</body>
</html>

