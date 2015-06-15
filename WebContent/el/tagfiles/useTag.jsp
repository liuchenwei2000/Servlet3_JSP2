<%@ page contentType="text/html;charset=GBK" language="java" %>
<%-- 
在页面中使用自定义标签时，需要先导入标签库，再使用标签。
导入tag文件中标签库的语法如下：
prefix 属性与之前自定义标签taglib指令的prefix属性完全一样，用于确定标签前缀；
tagdir 标签库路径下存放了很多tag file，每个tag file对应一个标签。
--%>
<%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			表达是语言————Tag文件
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
			<!-- 使用标签，格式如 tagPrefix:tagName... -->
			<mytags:iterator list="bean" color="red" />
		</p>
	</body>
</html>

