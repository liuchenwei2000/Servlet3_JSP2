<%@ page contentType="text/html;charset=GBK" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			�ļ��ϴ�
		</title>
	</head>
	<body>
		<!-- 
		�ϴ��ļ���Ҫ�ڱ���ʹ��<input type="file" /> �ļ���������ҳ���ϲ���һ�������ı����һ�������ť�� 
		
		����֮�⣬����ҪΪ��������enctype���ԡ�������ָ�����Ǳ����ݵı��뷽ʽ������������ֵ��
		application/x-www-form-urlencoded��Ĭ�ϵı��뷽ʽ��ֻ����������value����ֵ�����ô˷�ʽ�ı���ѱ����ֵ�����URL���뷽ʽ��
		multipart/form-data���Զ��������ķ�ʽ����������ݡ�
		text/plain��������action����Ϊ mailto:URL ����ʽʱ�ȽϷ��㣬��Ҫ�ʺ���ֱ��ͨ���������ʼ��ķ�ʽ��
		-->
		<form method="post" action="fileupload.do" enctype="multipart/form-data">
			ѡ���ļ���<input type="file" name="afile" />
			<input type="submit" value="�ϴ�" />
		</form>
	</body>
</html>

