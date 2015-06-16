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
			List<String> books = (List<String>)request.getAttribute("books");
			for(String book : books){
				out.println("</br>" + book);
			}
			out.println("</br>业务调用结束时间：" + new java.util.Date());
			if(request.isAsyncStarted()) {
				request.getAsyncContext().complete();
			}
		%>
	</body>
</html>

