<%-- 1������ Tag �ļ� --%>
<%-- 
��JSP��֧��Tag File�淶�£�Tag File�����˱�ǩ�����࣬���ĸ�ʽ������JSP�ļ���

�Զ����ǩ�����ã�ͨ���򵥵ı�ǩ��ҳ��������һ������Ƭ�ϡ�
ͬ��Tag FileҲֻ��������һ��ҳ��Ƭ�Σ����Բ�����Ҫ���������HTMLҳ�档

Tag File�����������������¹���tagName.tag�����ļ������Ǳ�ǩ�����ļ���׺������tag��
�����ļ��ŵ�WebӦ�õ�ĳ��·���£����·���൱�ڱ�ǩ���URI����

Tag File ����5������ָ�

taglib����JSP��taglibָ��Ч����ͬ�����ڵ���������ǩ�⡣
include����JSP��includeָ��Ч����ͬ�����ڵ�������JSP��HTMLҳ�档
tag����JSP��pageָ��Ч����ͬ���� pageEncoding��import�����ԣ���������ҳ���������ԡ�
attribute�����������Զ����ǩ�����ԣ��������Զ����ǩ�������еı�ǩ���ԡ�
variable�����������Զ����ǩ�ı�������Щ����������JSPҳ��ʹ�á�

���ö����У�
request��response��session��application��config��out��
--%>
<%@ tag pageEncoding="GBK" import="java.util.List" %>

<%@ attribute name="list" required="true" %>
<%@ attribute name="color" required="true" %>

<% 	
	// Java �����з��ʴ��������ֵ����ͨ�����·�ʽ
	String listName = list;
	out.println("List name is " + listName);
	out.println("Color is " + color);
	
	// �� request �л�ȡ����ֵ
	List<String> l = (List<String>) request.getAttribute(listName);
	for(String value : l) {
%>
	<!-- html �з�������ֵ����ͨ�� EL ���� ������ʽ -->
	<p style="color:${color};"><%=value %> </p>
<%
	}
%>
