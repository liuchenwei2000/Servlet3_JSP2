<%@ page contentType="text/html;charset=GBK" language="java" %>

<%-- 
ʹ�÷�ʽ���Զ����ǩ���ƣ�ͬ����Ҫ�ȵ����ǩ�⣬Ȼ����ʹ�ú����� 
���� uri ����ֵ�� *.tld �ļ��е� uri ����ֵ����һ�¡�
--%>
<%@ taglib prefix="myfunction" uri="http://taglib.myfunction.com" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			��������ԡ��������Զ��庯��
		</title>
	</head>
	<body>
		<%-- �﷨�� ${prefix: function-name(arg)} --%>
		<p>${myfunction:lower("Hello World")}</p>
		<p>${myfunction:upper("Hello World")}</p>
		<p>${myfunction:upper(header["host"])}</p>
	</body>
</html>