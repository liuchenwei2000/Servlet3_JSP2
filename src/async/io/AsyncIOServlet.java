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
 * 异步IO示例
 * <p>
 * Servlet 中使用非阻塞IO步骤如下：
 * 1，调用 ServletRequest 的 startAsync() 方法开启异步模式。
 * 2，通过 ServletRequest 获取 ServletInputStream，并为其设置监听器。
 * 3，监听器要实现 ReadListener 接口，在该监听器的方法中读取数据。
 * 
 * @author 刘晨伟
 * 
 * 创建日期：2014-1-11
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
		out.println("<title>非阻塞IO示例</title>");
		out.println("进入servlet的时间 ：" + new Date() + "</br>");
		
		// 第一步
		AsyncContext async = request.startAsync();
		async.setTimeout(30 * 1000);
		// 第二步
		// ServletInputStream.setReadListener(ReadListener) 方法允许监听器以非阻塞IO读取数据。
		// 这样一来，就无需在 Servlet 中使用阻塞 IO 读取数据了，而是改由 ReadListener 负责读取数据。
		// 这样 Servlet 就可以 继续向下执行，不会因为 IO 阻塞线程，因此提升了 Servlet 的性能。
		ServletInputStream inputStream = request.getInputStream();
		inputStream.setReadListener(new MyReadListener(inputStream, async));
		
		out.println("结束servlet的时间 ：" + new Date() + "</br>");
		out.flush();
	}
}
