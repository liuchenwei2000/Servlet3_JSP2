<%@ page contentType="text/html;charset=GBK" language="java" import="java.util.*" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			表达式语言————点号操作符和 [] 运算符
		</title>
	</head>
	<body>
		<!-- 准备演示数据 -->
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
		
		点号操作符：
		<p>
		<!-- 如果需要在支持 EL 的页面中正常输出 $ 符，则需要在 $ 前加转义字符 \ -->
		\${map.two}：${map.two}
		<br>
		\${bean.time}：${bean.time}
		<p>
		[] 号操作符：
		<p>
		\${map["1"]}：${map["1"]}
		<br>
		<!-- 数组和 List 中的 String 索引会强制转换为 int，如果无法转换则会抛出异常。 -->
		\${array[1]}：${array[1]}
		<br>
		\${list[2]}：${list[2]}
		<br>
		\${list}：${list}
		<br>
		<!-- 
		如果 [] 里没有引号，容器就会计算 [] 中的内容，搜索与该名字绑定的属性，并替换为这个属性的值。 
		如果有一个同名的隐式对象，那么总是使用隐式对象。
		-->
		<!-- 先查找一个名为 index 的属性，然后使用这个属性的值作为 Map 的键，或者返回 null。 -->
		\${list[index]}：${list[index]}
		<br>
		<!-- [] 中可以使用嵌套表达式，深度不限，容器会从最内层中括号开始计算。 -->
		\${list[map.two]}：${list[map.two]}
		<br>
		\${list[map["two"]]}：${list[map["two"]]}
		<br>
		<!-- empty 操作符可以用来检查后面的参数是否为 null 或为空 -->
		\${empty map["two"]}：${empty map["two"]}
		<br>
		\${empty map["three"]}：${empty map["three"]}
		<br>
		\${empty ""}：${empty ""}
	</body>
</html>

