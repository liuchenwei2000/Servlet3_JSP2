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
 * �Զ��� ReadListener
 * <p>
 * ������
 * 
 * @author ����ΰ
 *
 * �������ڣ�2015��6��16��
 */
public class MyReadListener implements ReadListener {
	
	private ServletInputStream inputStream;
	private AsyncContext async;
	
	public MyReadListener(ServletInputStream inputStream, AsyncContext async) {
		this.inputStream = inputStream;
		this.async = async;
	}

	/**
	 * �������ݿ���ʱ�����÷���
	 * 
	 * @see javax.servlet.ReadListener#onDataAvailable()
	 */
	@Override
	public void onDataAvailable() throws IOException {
		try {
			// ģ������׼���ĺ�ʱ�ȴ�
			TimeUnit.SECONDS.sleep(3);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		System.out.println("���ݿ���");

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
	 * ���������ݶ�ȡ��Ϻ󴥷��÷���
	 * 
	 * @see javax.servlet.ReadListener#onAllDataRead()
	 */
	@Override
	public void onAllDataRead() throws IOException {
		System.out.println("���ݶ�ȡ���");
	}

	/**
	 * ����ȡ���ݳ��ִ���ʱ�����÷���
	 * 
	 * @see javax.servlet.ReadListener#onError(java.lang.Throwable)
	 */
	@Override
	public void onError(Throwable arg0) {
		arg0.printStackTrace();
	}

}
