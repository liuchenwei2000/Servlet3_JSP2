<%@ page contentType="text/html;charset=GBK" language="java" import="java.util.*" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			���ʽ���ԡ���������Ų������� [] �����
		</title>
	</head>
	<body>
		<!-- ׼����ʾ���� -->
		<% 
			String[] array = {"red","green","blue"};
			List<String> list = Arrays.asList(array);
			Date date = new Date();
			
			Map<String, String> map = new HashMap<String,String>();
			map.put("1", "first");
			map.put("two", "2");
			
			request.setAttribute("array", array);
			request.setAttribute("list", list);
			request.setAttribute("index", "0");
			session.setAttribute("bean", date);
			application.setAttribute("map", map);
		%>
		
		��Ų�������
		<p>
		<!-- �����Ҫ��֧�� EL ��ҳ����������� $ ��������Ҫ�� $ ǰ��ת���ַ� \ -->
		\${map.two}��${map.two}
		<br>
		\${bean.time}��${bean.time}
		<p>
		[] �Ų�������
		<p>
		\${map["1"]}��${map["1"]}
		<br>
		<!-- ����� List �е� String ������ǿ��ת��Ϊ int������޷�ת������׳��쳣�� -->
		\${array[1]}��${array[1]}
		<br>
		\${list[2]}��${list[2]}
		<br>
		\${list}��${list}
		<br>
		<!-- 
		��� [] ��û�����ţ������ͻ���� [] �е����ݣ�����������ְ󶨵����ԣ����滻Ϊ������Ե�ֵ�� 
		�����һ��ͬ������ʽ������ô����ʹ����ʽ����
		-->
		<!-- �Ȳ���һ����Ϊ index �����ԣ�Ȼ��ʹ��������Ե�ֵ��Ϊ Map �ļ������߷��� null�� -->
		\${list[index]}��${list[index]}
		<br>
		<!-- [] �п���ʹ��Ƕ�ױ��ʽ����Ȳ��ޣ�����������ڲ������ſ�ʼ���㡣 -->
		\${list[map.two]}��${list[map.two]}
		<br>
		\${list[map["two"]]}��${list[map["two"]]}
		<br>
		<!-- empty ��������������������Ĳ����Ƿ�Ϊ null ��Ϊ�� -->
		\${empty map["two"]}��${empty map["two"]}
		<br>
		\${empty map["three"]}��${empty map["three"]}
		<br>
		\${empty ""}��${empty ""}
	</body>
</html>

