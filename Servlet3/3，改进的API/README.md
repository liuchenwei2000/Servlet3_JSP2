## 改进的API ##

### ServletContext的改进 ###

ServletContext 允许通过编程的方式动态注册 Servlet、Filter，并允许动态设置 Web 应用的初始化参数。

* 多个重载的 	`addServlet`：动态地注册 Servlet。
* 多个重载的 `addFilter`：动态地注册 Filter。
* 多个重载的 `addListener`：动态地注册 Listener。

`setInitParameter(String name, String value)`：为Web应用设置初始化参数。

### 对文件上传的支持 ###

详见 `annotation.FileUploadServlet` 和 `fileupload.jsp`。