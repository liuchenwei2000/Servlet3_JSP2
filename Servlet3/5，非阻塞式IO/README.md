## 非阻塞式 IO ##

JavaEE7 中 的 servlet3.1 规范新特性包括强制更改 session id（由 HttpServletRequest 的 changeSessionId() 方法提供）、非阻塞IO等。

Servlet 底层的 IO 是通过如下两个流来支持的：

* `ServletInputStream`：Servlet 用于读取数据的输入流。
* `ServletOutputStream`：Servlet 用于写入数据的输出流。

以 Servlet 读取数据为例，传统的读取方式采用阻塞式 IO —— 当 Servlet 读取浏览器提交的数据时，如果数据暂时不可用，或者数据没有读取完毕，Servlet 当前所在线程将会被阻塞，无法继续向下进行。而使用 Servlet3.1 提供的非阻塞 IO 可以更好地提升性能。 

详见 `async.io` 包。
