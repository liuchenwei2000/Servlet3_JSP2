<%@ page contentType="text/html;charset=GBK" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			���ʽ���ԡ����������ö���
		</title>
	</head>
	<body>
        <!-- 
		ʹ��EL����ֱ�ӻ�ȡ�������ֵ�����ȡҳ����JavaBean��ָ������ֵ�����ȡ����ͷ��
		page��request��session��application��Χ������ֵ�ȣ��ⶼ��Ҫ�õ�EL�����ö���
        EL����11�����ö������£� 
        
		�����ҳ���pageContext������JSP��pageContext���ö�����ͬ
		{pageContext["attribute"]}
		
		���ڻ�ȡpage��Χ�ڵ�����ֵ
		{pageScope["attribute"]}
		
		���ڻ�ȡrequest��Χ�ڵ�����ֵ
		{requestScope["attribute"]}
		
		���ڻ�ȡsession��Χ�ڵ�����ֵ
		{sessionScope["attribute"]}
		
		���ڻ�ȡapplication��Χ�ڵ�����ֵ
		{applicationScope["attribute"]}
		
		���ڻ�ȡ����Ĳ���ֵ
		{param["name"]}
		
		��param���������ڣ��ö������ڻ�ȡֵΪ���������ֵ
		{paramValues["books"]}
		
		���ڻ�ȡ����ͷ������ֵ
		{header["host"]}
		
		��header���������ڣ��ö������ڻ�ȡֵΪ���������ֵ
		{headerValues["hosts"]}
		
		���ڻ�ȡWebӦ�õĳ�ʼ������
		{initParam["user"]}
		
		���ڻ�ȡָ����Cookieֵ
		{cookie["user"].value}
        -->
        <% 
			session.setAttribute("username", "liucw1");
			Cookie c = new Cookie("age","28");
			c.setMaxAge(24 * 60 * 60);
			response.addCookie(c);
        %>
        
        <form action="implicit-objects.jsp" method="post">
			Email��<input type="text" name="email" value="${param.email}" />
			<input type="submit" value="�ύ" />
        </form>
        <p>
       
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
				<td>\${param.email}</td>
				<td>${param.email}</td>
			</tr>
			
			<tr>
				<td>��ȡ�������ֵ</td>
				<td>\${param["email"]}</td>
				<td>${param["email"]}</td>
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
		</table>
	</body>
</html>
