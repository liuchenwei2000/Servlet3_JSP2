<%@ page contentType="text/html;charset=GBK" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			文件上传
		</title>
	</head>
	<body>
		<!-- 
		上传文件需要在表单里使用<input type="file" /> 文件域；它会在页面上产生一个单行文本域和一个浏览按钮。 
		
		除此之外，还需要为表单域设置enctype属性。该属性指定的是表单数据的编码方式，有如下三个值：
		application/x-www-form-urlencoded：默认的编码方式，只处理表单域里的value属性值，采用此方式的表单会把表单域的值处理成URL编码方式。
		multipart/form-data：以二进制流的方式来处理表单数据。
		text/plain：当表单的action属性为 mailto:URL 的形式时比较方便，主要适合于直接通过表单发送邮件的方式。
		-->
		<form method="post" action="fileupload.do" enctype="multipart/form-data">
			选择文件：<input type="file" name="afile" />
			<input type="submit" value="上传" />
		</form>
	</body>
</html>

