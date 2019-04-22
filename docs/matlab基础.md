#### 1.获得MATLAB帮助的三种方法

最好的方法是使用帮助空间窗口（helpbrowser）。你可以单击MATLAB桌面工具栏上的图标 ，也可以在命令窗口 \(The Command Windows\)中输入 helpdesk 或 helpwin 来启动帮助空间窗口（helpbrowser）

第二种方法是在MATLAB 命令窗口 \(The Command Windows\)中输入 help 或 help 和所需要的函数的名字。如果你在命令窗口 \(The Command Windows\)中只输入 help，MATLAB 将会显示一连串的函数。如果有一个专门的函数名或工具箱的名字包含在内，那么 help 将会提供这个函数或工具箱。

第三种方法是通过 lookfor 命令得到帮助。lookfor 命令与 help 命令不同，help 命令要求与函数名精确匹配，而 lookfor 只要求与每个函数中的总结信息有匹配。

#### 2.一些常用 matlab 命令整理

* 在命令窗口\(The   Command Windows\)中输入 demo 或在启动平台中选择“demos”来运行MATLAB 内建的示例。
* 如果一个 M 文件运行时间过长，里面可能含有无限循  环，而没有结束。在这种情况下，可在命令窗口内输入 control-c\(简写为^c\)
* 用 diary 命令记录下在MATLAB 中运行过程中每个线程所做的事。命令的  格式如下： diary filename   。当这个命令被执行后，所有在命令窗口\(The Command Windows\)中的输入和输出将会被  记录在 diary 文件中。这是一个非常重要的工具，当MATLAB 发生错误而中断时，利用它 你可以重建重要的事件。diary off 命令中止写入 diary 文件，diary on 命令重新开始写入。



