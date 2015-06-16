/**
 * 
 */
package async.io;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.AsyncContext;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * �첽IOʾ��
 * <p>
 * Servlet ��ʹ�÷�����IO�������£�
 * 1������ ServletRequest �� startAsync() ���������첽ģʽ��
 * 2��ͨ�� ServletRequest ��ȡ ServletInputStream����Ϊ�����ü�������
 * 3��������Ҫʵ�� ReadListener �ӿڣ��ڸü������ķ����ж�ȡ���ݡ�
 * 
 * @author ����ΰ
 * 
 * �������ڣ�2014-1-11
 */
@WebServlet(name="asyncio", urlPatterns={"/asyncio.do"}, asyncSupported=true)
public class AsyncIOServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -795712360603493452L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		
		PrintWriter out = response.getWriter();
		out.println("<title>������IOʾ��</title>");
		out.println("����servlet��ʱ�� ��" + new Date() + "</br>");
		
		// ��һ��
		AsyncContext async = request.startAsync();
		async.setTimeout(30 * 1000);
		// �ڶ���
		// ServletInputStream.setReadListener(ReadListener) ��������������Է�����IO��ȡ���ݡ�
		// ����һ������������ Servlet ��ʹ������ IO ��ȡ�����ˣ����Ǹ��� ReadListener �����ȡ���ݡ�
		// ���� Servlet �Ϳ��� ��������ִ�У�������Ϊ IO �����̣߳���������� Servlet �����ܡ�
		ServletInputStream inputStream = request.getInputStream();
		inputStream.setReadListener(new MyReadListener(inputStream, async));
		
		out.println("����servlet��ʱ�� ��" + new Date() + "</br>");
		out.flush();
	}
}
