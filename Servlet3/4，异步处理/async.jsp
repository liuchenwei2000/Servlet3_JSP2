<!-- 被异步请求dispatch的目标页面需要指定 session="false"，表明该页面不会重新创建session。 -->
<%@ page contentType="text/html;charset=GBK" language="java" session="false" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			异步请求目标页
		</title>
	</head>
	<body>
		<%
			out.println("业务调用结束时间：" + new java.util.Date());
			
			List<String> books = (List<String>)request.getAttribute("books");
			for(String book : books){
				out.println("</br>" + book);
			}
		%>
	</body>
</html>

