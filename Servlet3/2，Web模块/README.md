## Web 模块简介 ##

Servlet3.0 规范不再要求所有Web组件（如Servlet、Listener、Filter）都部署在 web.xml 中，而是允许采用“Web模块”来部署、管理它们。

Web 模块通常对应一个 Jar 包，这个 Jar 包有如下文件结构：

* jar/META-INF/web-fragment.xml
* jar/Web 模块所用的类文件、资源文件等。

Web 模块支持为模块化开发、框架使用提供了巨大的方便，比如需要在 Web 应用中使用 Web 框架，只需要将该框架的 jar 包复制到 Web 应用中即可。因为这个 jar 包的 META_INF 目录下可以通过 web-fragment.xml 文件来配置该框架所需的 Servlet、Listener、Filter 等，从而避免修改 Web 应用下的 web.xml 文件。Web 模块支持对模块化开发也有很大的帮助，开发者可以将不同模块的 Web 组件部署在不同的 web-fragment.xml 文件中，从而避免所有模块的配置、部署信息都写在 web.xml 文件中，这对以后的升级、维护将更加方便。
