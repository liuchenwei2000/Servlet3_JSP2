<%@ page contentType="text/html;charset=GBK" language="java" %>
<%-- 
��ҳ����ʹ���Զ����ǩʱ����Ҫ�ȵ����ǩ�⣬��ʹ�ñ�ǩ��
����tag�ļ��б�ǩ����﷨���£�
prefix ������֮ǰ�Զ����ǩtaglibָ���prefix������ȫһ��������ȷ����ǩǰ׺��
tagdir ��ǩ��·���´���˺ܶ�tag file��ÿ��tag file��Ӧһ����ǩ��
--%>
<%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			��������ԡ�������Tag�ļ�
		</title>
	</head>
	<body>
		<% 
			java.util.List<String> list = new java.util.ArrayList<String>();
			list.add("A");
			list.add("B");
			list.add("C");
			list.add("D");
			request.setAttribute("bean", list);
		%>
		<p>
			<!-- ʹ�ñ�ǩ����ʽ�� tagPrefix:tagName... -->
			<mytags:iterator list="bean" color="red" />
		</p>
	</body>
</html>

