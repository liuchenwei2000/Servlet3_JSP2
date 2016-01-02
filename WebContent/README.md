## JSP ##

JSP 标准动作、EL 和 JSTL（JSP Standard Tag Library）都是为了实现JSP页面无脚本（scriptlet）而提供的技术，使视图层和控制层真正分离。
 
### JSP 标准动作 ###

Java 提供了 JSP 标准动作来实现在 JSP 页面中调用 JavaBean。JSP 标准动作在客户端请求 JSP 页面时执行，JSP 标准动作可以使用现有的 JavaBean 组件和属性，以及响应用户请求跳转到另一个页面。

JSP 标准动作使用 `<jsp:>` 作为前缀，其语法如下：

`<jsp:userBean id="order" class="com.ch.Order" scope="request">`

### EL（表达式语言） 

JSP 标准动作不是万能的，只依靠 JSP 标准动作是做不到 JSP 页面无脚本的。JSP 标准动作存在的问题是：
如果 JavaBean 属性是 String 类型和基本数据类型，JSP 标准动作可以实现类型的自动转换；但如果是一个 Object 类型的数据，就不能够做到类型的自动转换，还得依靠嵌套 JSP 页面脚本来实现。

从 JSP2.0 之后，可以使用EL表达式来处理这样的问题。例如：`${school.teacher.name}` 无需类型转换便可以得到 JavaBean 封装的数据。

 
### JSTL（JSP标准标签库）

在 EL 表达式中只能进行逻辑运算，并不能进行逻辑控制，也就是说，使用了 EL 表达式，还是无法真正实现 JSP 页面完全无脚本。这时可以借助 JSTL 来实现。

JSTL 包含用于编写和开发 JSP 页面的一组标准标签，它可以为用户提供一个无脚本环境。在此环境中，用户可以使用标签编写代码，而无须使用 Java 脚本。

### JSP2主要新特性

* 1，直接配置 JSP 属性。
* 2，表达式语言（Expression Language）。
* 3，简化的自定义标签 API。
* 4，Tag 文件语法。