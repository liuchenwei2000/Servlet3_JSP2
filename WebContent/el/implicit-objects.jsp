<%@ page contentType="text/html;charset=GBK" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			表达式语言————内置对象
		</title>
	</head>
	<body>
        <!-- 
		使用EL可以直接获取请求参数值，或获取页面中JavaBean的指定属性值，或获取请求头及
		page、request、session和application范围的属性值等，这都需要用到EL的内置对象。
        EL包含11个内置对象，如下： 
        
		代表该页面的pageContext对象，与JSP的pageContext内置对象相同
		{pageContext["attribute"]}
		
		用于获取page范围内的属性值
		{pageScope["attribute"]}
		
		用于获取request范围内的属性值
		{requestScope["attribute"]}
		
		用于获取session范围内的属性值
		{sessionScope["attribute"]}
		
		用于获取application范围内的属性值
		{applicationScope["attribute"]}
		
		用于获取请求的参数值
		{param["name"]}
		
		与param的区别在于，该对象用于获取值为数组的属性值
		{paramValues["books"]}
		
		用于获取请求头的属性值
		{header["host"]}
		
		与header的区别在于，该对象用于获取值为数组的属性值
		{headerValues["hosts"]}
		
		用于获取Web应用的初始化参数
		{initParam["user"]}
		
		用于获取指定的Cookie值
		{cookie["user"].value}
        -->
        <% 
			session.setAttribute("username", "liucw1");
			Cookie c = new Cookie("age","28");
			c.setMaxAge(24 * 60 * 60);
			response.addCookie(c);
        %>
        
        <form action="implicit-objects.jsp" method="post">
			Email：<input type="text" name="email" value="${param.email}" />
			<input type="submit" value="提交" />
        </form>
        <p>
       
       <table border="1" style="width:680;background-color:#aaaadd;">
			<tr>
				<td style="width:170;"><b>功能</b></td>
				<td style="width:200;"><b>表达式语言</b></td>
				<td style="width:300;"><b>运算结果</b></td>
			</tr>
			<!-- 使用两种语法获取请求参数值 -->
			<!-- param 用于获取请求的参数值。 -->
			<tr>
				<td>获取请求参数值</td>
				<td>\${param.email}</td>
				<td>${param.email}</td>
			</tr>
			
			<tr>
				<td>获取请求参数值</td>
				<td>\${param["email"]}</td>
				<td>${param["email"]}</td>
			</tr>
			
			<!-- 使用两种语法获取请求头信息 -->
			<!-- header 用于获取请求头信息。 -->
			<tr>
				<td>获取请求头的值</td>
				<td>\${header.host}</td>
				<td>${header.host}</td>
			</tr>
			
			<tr>
				<td>获取请求头的值</td>
				<td>\${header["host"]}</td>
				<td>${header["host"]}</td>
			</tr>
			
			<tr>
				<td>获取应用初始化参数值</td>
				<td>\${initParam.appname}</td>
				<td>${initParam.appname}</td>
			</tr>
			
			<tr>
				<td>获取 session 范围的属性值</td>
				<td>\${sessionScope["username"]}</td>
				<td>${sessionScope["username"]}</td>
			</tr>
			
			<tr>
				<td>获取 指定 Cookie 的值</td>
				<td>\${cookie["age"].value}</td>
				<td>${cookie["age"].value}</td>
			</tr>
		</table>
	</body>
</html>
