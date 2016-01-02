## EL：Expression Language ##

表达式语言（EL：Expression Language）是一种简化的数据访问方式，使用表达式语言可以方便地访问 JSP 的隐含对象和 JavaBean 组件。

原先能用 scriptlet 和表达式完成的事情，都能用 EL 完成，而且 EL 往往更为简单。 EL 的用途是提供一种更简单的方法来调用 Java 代码，但是代码本身放在别的地方。

现在的最佳实践是，不要在JSP中编写方法代码，要把Java方法写在别的地方，再用EL来调用。
EL 可用于简化 JSP 页面的开发，允许美工设计人员使用 EL 的语法获取业务逻辑组件传过来的变量值。

EL 并不是一种通用的程序语言，而仅仅是一种数据访问语言，可以方便地访问应用程序数据，避免使用 JSP 脚本。

EL的语法格式：`${expression}`
如果需要在支持 EL 的页面中正常输出 $ 符，则需要在 $ 前加转义字符 \ 。

expression 中第一个命名变量可以是一个隐式对象，也可以是某作用域中的一个属性（attribute）。

隐式对象：`pageScope`、`requestScope`、`sessionScope`、`applicationScope`、`param`、`paramValues`、`header`、`headerValues`、`cookie`、`initParam`、`pageContext`。

作用域：页面作用域、请求作用域、会话作用域、应用作用域。

EL的特点：

* 1，可以与 JSTL 及 JavaScript 语句结合使用。
* 2，自动执行类型转换。
* 3，不仅可以访问一般变量，还可以访问 JavaBean 中的属性、嵌套属性和集合对象。
* 4，可以执行算术运算、逻辑运算、关系运算和条件运算等、
* 5，可以访问 JSP 的作用域（request、session、application及page）。

### 点号操作符 ###

使用点号（.）操作符访问 bean 属性和映射值，如下：

`${person.name}`

点号左边可以是一个隐式对象，也可以是一个作用域属性；右边可以是一个映射键（当左边变量是映射 map 时），也可以是一个 bean 属性（当左边变量是 JavaBean 时）。

* 如果表达式中变量后面有一个点号，点号左边的变量必须是一个 map 或一个 bean。
* 点号右边必须是一个 map 键或一个 bean 属性。
* 点号右边必须遵循 Java 有关标识符的命名规则（必须以字母、$ 或 _ 开头，不能使 Java 关键字）。
* 如果左边对象是一个 bean，但是指定的属性不存在，则会抛出一个异常。


### [] 操作符 ###

[] 操作符比点号（.）操作符更强大，点号操作符的左边只能是一个 Map 或一个 bean，右边必须遵循 Java 的标识符命名规则。使用 [] 操作符时，左边可以是一个 List 或 数组（任何类型的数组），右边可以是一个数（表示索引），或者是可以解析为一个数，也可以是不遵循 Java 命名规则的标识符，比如 Map 中的某个键是 "5"、"a.b"等。

示例如下：

`${list["something"]}`

* 如果表达式中变量后面有一个[]号，[]号左边的变量可以是 Map、bean、List 或是数组。
* 如果 [] 里是一个 String 字面量，这可以是一个 Map 键、bean 的属性名，还可以是 List 或数组中的索引值。
