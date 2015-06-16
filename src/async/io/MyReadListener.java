/**
 * 
 */
package async.io;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

import javax.servlet.AsyncContext;
import javax.servlet.ReadListener;
import javax.servlet.ServletInputStream;

/**
 * 自定义 ReadListener
 * <p>
 * 第三步
 * 
 * @author 刘晨伟
 *
 * 创建日期：2015年6月16日
 */
public class MyReadListener implements ReadListener {
	
	private ServletInputStream inputStream;
	private AsyncContext async;
	
	public MyReadListener(ServletInputStream inputStream, AsyncContext async) {
		this.inputStream = inputStream;
		this.async = async;
	}

	/**
	 * 当有数据可用时触发该方法
	 * 
	 * @see javax.servlet.ReadListener#onDataAvailable()
	 */
	@Override
	public void onDataAvailable() throws IOException {
		try {
			// 模拟数据准备的耗时等待
			TimeUnit.SECONDS.sleep(3);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		System.out.println("数据可用");

		StringBuilder sb = new StringBuilder();
		int len = -1;
		byte[] buffer = new byte[1024 * 4];

		while (inputStream.isReady() && (len = inputStream.read(buffer)) > 0) {
			String data = new String(buffer, 0, len);
			sb.append(data);
		}

		System.out.println(sb.toString());
		
		async.getRequest().setAttribute("data", sb.toString());
		async.dispatch("/async/asyncio.jsp");

	}

	/**
	 * 当所有数据读取完毕后触发该方法
	 * 
	 * @see javax.servlet.ReadListener#onAllDataRead()
	 */
	@Override
	public void onAllDataRead() throws IOException {
		System.out.println("数据读取完毕");
	}

	/**
	 * 当读取数据出现错误时触发该方法
	 * 
	 * @see javax.servlet.ReadListener#onError(java.lang.Throwable)
	 */
	@Override
	public void onError(Throwable arg0) {
		arg0.printStackTrace();
	}

}
