<%@ page contentType="text/html;charset=GBK" language="java" session="false" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			�첽IOĿ��ҳ
		</title>
	</head>
	<body>
		<%
			out.println("������ύ������Ϊ��" + request.getAttribute("data"));
			out.println("</br>ҵ����ý���ʱ�䣺" + new java.util.Date());
			if(request.isAsyncStarted()) {
				request.getAsyncContext().complete();
			}
		%>
	</body>
</html>

