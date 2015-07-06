<%@ page contentType="text/html;charset=GBK" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			表达式语言————隐式（内置）对象
		</title>
	</head>
	<body>
        <!-- 
		使用EL可以直接获取请求参数值，或获取页面中 JavaBean 的指定属性值，或获取请求头及
		page、request、session 和 application范围的属性值等，这都需要用到EL的内置对象。
		
        EL包含11个内置对象，如下： 
        
		代表该页面的 pageContext 对象，与JSP的pageContext内置对象相同，它的 PageContext 对象的一个实际引用。
		{pageContext["attribute"]}
		
		page 作用域属性的 Map，用于获取page范围内的属性（attribute）值
		{pageScope["attribute"]}
		
		request 作用域属性的 Map，用于获取request范围内的属性（attribute）值
		{requestScope["attribute"]}
		
		session 作用域属性的 Map，用于获取session范围内的属性（attribute）值
		{sessionScope["attribute"]}
		
		application 作用域属性的 Map，用于获取application范围内的属性（attribute）值
		{applicationScope["attribute"]}
		
		请求参数的 Map，用于获取请求的参数值
		{param["name"]}
		
		请求参数的 Map，与param的区别在于，该对象用于获取值为数组的属性值
		{paramValues["books"]}
		
		请求首部的 Map，用于获取请求头的属性值
		{header["host"]}
		
		请求首部的 Map，与header的区别在于，该对象用于获取值为数组的属性值
		{headerValues["hosts"]}
		
		用于获取 Web 应用的初始化参数
		{initParam["user"]}
		
		用于获取指定的Cookie值
		{cookie["user"].value}
        -->
        <% 
			// 为了测试 sessionScope 和 Cookie
        	session.setAttribute("username", "liucw1");
        	request.setAttribute("my.today", new java.util.Date());
        	
			Cookie c = new Cookie("age", request.getParameter("age"));
			c.setMaxAge(24 * 60 * 60);
			response.addCookie(c);
        %>
        
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
				<td>\${param.name}</td>
				<td>${param.name}</td>
			</tr>
			
			<tr>
				<td>获取请求参数值</td>
				<td>\${param["name"]}</td>
				<td>${param["name"]}</td>
			</tr>
			
			<!-- 即便 color 参数可能有 多个值，仍然可以使用下面的方式获取其值，但这种方式只返回第一个值。 -->
			<tr>
				<td>获取请求参数值</td>
				<td>\${param.color}</td>
				<td>${param.color}</td>
			</tr>
			
			<!-- 获取多个请求参数值。 -->
			<tr>
				<td>获取多个请求参数值</td>
				<td>\${paramValues.color[0]}</td>
				<td>${paramValues.color[0]}</td>
			</tr>
			
			<tr>
				<td>获取多个请求参数值</td>
				<td>\${paramValues.color[1]}</td>
				<td>${paramValues.color[1]}</td>
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
			
			<!-- 
			requestScope 不是请求对象 request，它只是请求作用域属性的 Map 。
			使用 requestScope 会得到请求作用域的 attribute，而不是 request 自身的 property，若想得到后者，需要通过 pageContext。
			pageScope、sessionScope、applicationScope 也是同样的道理。
			-->
			<tr>
				<td>获取 request 对象的 property</td>
				<td>\${pageContext.request.method}</td>
				<td>${pageContext.request.method}</td>
			</tr>
			
			<!-- EL 默认会在所有4个作用域里查找属性，而使用特定作用域的隐式对象除了能解决命名冲突的问题，还能解决属性名不遵循 Java 命名规则的问题。 -->
			<tr>
				<td>隐式对象的其他作用（错误的方式）</td>
				<td>\${my.today.time}</td>
				<!--  
				EL 能友好地处理 null，它能处理 unknown 或 null 值，即使找不到表达式中指定的 attribute、property、key，也会显示页面。
				在算数表达式中，EL 把 null 值看作是 0；在逻辑表达式中，EL 把 null 值看作是 false。
				-->
				<td>${my.today.time}</td>
			</tr>
			
			<tr>
				<td>隐式对象的其他作用（正确的方式）</td>
				<td>\${requestScope["my.today"].time}</td>
				<td>${requestScope["my.today"].time}</td>
			</tr>
		</table>
	</body>
</html>
