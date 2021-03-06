## 异步处理 ##

在以前的 Servlet 规范中，如果 Servlet 作为控制器调用了一个耗时的业务方法，那么 Servlet 必须等到业务方法完全返回之后才会生成响应，这将使得 Servlet 对业务方法的调用变成一种阻塞式的调用，因此效率比较低。

Servlet3.0 规范引入了异步处理来解决这个问题，异步处理允许 Servlet 重新发起一条新线程去调用耗时的业务方法，这样就可避免等待。详见 `async.AsyncServlet` 和 `async/async.jsp`。

当 Servlet 启用异步调用的线程之后，该线程的执行过程对开发者是透明的。但在有些情况下，开发者需要了解该异步线程的执行细节，并针对特定的执行结果进行针对性处理。这时就要用到异步监听器。详见 `async.MyAsyncListener`。

Servlet3.0 规范完全支持在 Filter 中使用异步调用，效果与 Servlet 完全相似。
