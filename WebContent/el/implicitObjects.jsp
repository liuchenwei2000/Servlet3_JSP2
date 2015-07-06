<%@ page contentType="text/html;charset=GBK" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			���ʽ���ԡ���������ʽ�����ã�����
		</title>
	</head>
	<body>
        <!-- 
		ʹ��EL����ֱ�ӻ�ȡ�������ֵ�����ȡҳ���� JavaBean ��ָ������ֵ�����ȡ����ͷ��
		page��request��session �� application��Χ������ֵ�ȣ��ⶼ��Ҫ�õ�EL�����ö���
		
        EL����11�����ö������£� 
        
		�����ҳ��� pageContext ������JSP��pageContext���ö�����ͬ������ PageContext �����һ��ʵ�����á�
		{pageContext["attribute"]}
		
		page ���������Ե� Map�����ڻ�ȡpage��Χ�ڵ����ԣ�attribute��ֵ
		{pageScope["attribute"]}
		
		request ���������Ե� Map�����ڻ�ȡrequest��Χ�ڵ����ԣ�attribute��ֵ
		{requestScope["attribute"]}
		
		session ���������Ե� Map�����ڻ�ȡsession��Χ�ڵ����ԣ�attribute��ֵ
		{sessionScope["attribute"]}
		
		application ���������Ե� Map�����ڻ�ȡapplication��Χ�ڵ����ԣ�attribute��ֵ
		{applicationScope["attribute"]}
		
		��������� Map�����ڻ�ȡ����Ĳ���ֵ
		{param["name"]}
		
		��������� Map����param���������ڣ��ö������ڻ�ȡֵΪ���������ֵ
		{paramValues["books"]}
		
		�����ײ��� Map�����ڻ�ȡ����ͷ������ֵ
		{header["host"]}
		
		�����ײ��� Map����header���������ڣ��ö������ڻ�ȡֵΪ���������ֵ
		{headerValues["hosts"]}
		
		���ڻ�ȡ Web Ӧ�õĳ�ʼ������
		{initParam["user"]}
		
		���ڻ�ȡָ����Cookieֵ
		{cookie["user"].value}
        -->
        <% 
			// Ϊ�˲��� sessionScope �� Cookie
        	session.setAttribute("username", "liucw1");
        	request.setAttribute("my.today", new java.util.Date());
        	
			Cookie c = new Cookie("age", request.getParameter("age"));
			c.setMaxAge(24 * 60 * 60);
			response.addCookie(c);
        %>
        
       <table border="1" style="width:680;background-color:#aaaadd;">
			<tr>
				<td style="width:170;"><b>����</b></td>
				<td style="width:200;"><b>���ʽ����</b></td>
				<td style="width:300;"><b>������</b></td>
			</tr>
			<!-- ʹ�������﷨��ȡ�������ֵ -->
			<!-- param ���ڻ�ȡ����Ĳ���ֵ�� -->
			<tr>
				<td>��ȡ�������ֵ</td>
				<td>\${param.name}</td>
				<td>${param.name}</td>
			</tr>
			
			<tr>
				<td>��ȡ�������ֵ</td>
				<td>\${param["name"]}</td>
				<td>${param["name"]}</td>
			</tr>
			
			<!-- ���� color ���������� ���ֵ����Ȼ����ʹ������ķ�ʽ��ȡ��ֵ�������ַ�ʽֻ���ص�һ��ֵ�� -->
			<tr>
				<td>��ȡ�������ֵ</td>
				<td>\${param.color}</td>
				<td>${param.color}</td>
			</tr>
			
			<!-- ��ȡ����������ֵ�� -->
			<tr>
				<td>��ȡ����������ֵ</td>
				<td>\${paramValues.color[0]}</td>
				<td>${paramValues.color[0]}</td>
			</tr>
			
			<tr>
				<td>��ȡ����������ֵ</td>
				<td>\${paramValues.color[1]}</td>
				<td>${paramValues.color[1]}</td>
			</tr>
			
			<!-- ʹ�������﷨��ȡ����ͷ��Ϣ -->
			<!-- header ���ڻ�ȡ����ͷ��Ϣ�� -->
			<tr>
				<td>��ȡ����ͷ��ֵ</td>
				<td>\${header.host}</td>
				<td>${header.host}</td>
			</tr>
			
			<tr>
				<td>��ȡ����ͷ��ֵ</td>
				<td>\${header["host"]}</td>
				<td>${header["host"]}</td>
			</tr>
			
			<tr>
				<td>��ȡӦ�ó�ʼ������ֵ</td>
				<td>\${initParam.appname}</td>
				<td>${initParam.appname}</td>
			</tr>
			
			<tr>
				<td>��ȡ session ��Χ������ֵ</td>
				<td>\${sessionScope["username"]}</td>
				<td>${sessionScope["username"]}</td>
			</tr>
			
			<tr>
				<td>��ȡ ָ�� Cookie ��ֵ</td>
				<td>\${cookie["age"].value}</td>
				<td>${cookie["age"].value}</td>
			</tr>
			
			<!-- 
			requestScope ����������� request����ֻ���������������Ե� Map ��
			ʹ�� requestScope ��õ������������ attribute�������� request ����� property������õ����ߣ���Ҫͨ�� pageContext��
			pageScope��sessionScope��applicationScope Ҳ��ͬ���ĵ���
			-->
			<tr>
				<td>��ȡ request ����� property</td>
				<td>\${pageContext.request.method}</td>
				<td>${pageContext.request.method}</td>
			</tr>
			
			<!-- EL Ĭ�ϻ�������4����������������ԣ���ʹ���ض����������ʽ��������ܽ��������ͻ�����⣬���ܽ������������ѭ Java ������������⡣ -->
			<tr>
				<td>��ʽ������������ã�����ķ�ʽ��</td>
				<td>\${my.today.time}</td>
				<!--  
				EL ���Ѻõش��� null�����ܴ��� unknown �� null ֵ����ʹ�Ҳ������ʽ��ָ���� attribute��property��key��Ҳ����ʾҳ�档
				���������ʽ�У�EL �� null ֵ������ 0�����߼����ʽ�У�EL �� null ֵ������ false��
				-->
				<td>${my.today.time}</td>
			</tr>
			
			<tr>
				<td>��ʽ������������ã���ȷ�ķ�ʽ��</td>
				<td>\${requestScope["my.today"].time}</td>
				<td>${requestScope["my.today"].time}</td>
			</tr>
		</table>
	</body>
</html>
