## annotation 使用说明 ##

如果打算使用 Annotation 来配置 Servlet，那么要保证：

* 1，不要在 web.xml 文件的根元素（<web-app>）中指定 metadata-complete="true"。
* 2，不要在 web.xml 文件中配置该 Servlet。

示例见 src/annotation 包。
