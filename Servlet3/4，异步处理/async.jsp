<!-- ���첽����dispatch��Ŀ��ҳ����Ҫָ�� session="false"��������ҳ�治�����´���session�� -->
<%@ page contentType="text/html;charset=GBK" language="java" session="false" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			�첽����Ŀ��ҳ
		</title>
	</head>
	<body>
		<%
			out.println("ҵ����ý���ʱ�䣺" + new java.util.Date());
			
			List<String> books = (List<String>)request.getAttribute("books");
			for(String book : books){
				out.println("</br>" + book);
			}
		%>
	</body>
</html>

