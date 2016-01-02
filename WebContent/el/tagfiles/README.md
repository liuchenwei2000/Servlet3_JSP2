## Tag 文件 ##

Tag 文件是自定义标签的简化用法，使用 Tag File 可以无须定义标签处理类和标签库文件，但仍然可以在 JSP 页面中使用自定义标签。

Tag File 是自定义标签的简化，事实上就像JSP文件会编译成 Servlet 一样，Tag file 也会编译成标签处理类，自定义标签的后台依然由标签处理类完成，而这个过程由容器自动完成。

开发及使用步骤如下：

* 1，建立 Tag 文件（详见 `WEB-INF/tags/iterator.tag`）
* 2，在 JSP 中使用标签（详见 `el/tagfiles/useTag.jsp`）
