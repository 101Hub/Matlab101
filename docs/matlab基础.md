#### 1. 一些常用及非常有效的 matlab 命令及使用技巧

> 参考：
>
> 1. [What are some cool MATLAB tricks?](https://www.quora.com/What-are-some-cool-MATLAB-tricks)
>
> 2. [有哪些让人相见恨晚的 MATLAB 命令？](https://www.zhihu.com/question/24499729)

* 在命令窗口\(The
   Command Windows\)中输入 demo 或在启动平台中选择“demos”来运行MATLAB 内建的示例。
* 如果一个 M 文件运行时间过长，里面可能含有无限循
  环，而没有结束。在这种情况下，可在命令窗口内输入 control-c\(简写为^c\)
* 用 diary 命令记录下在MATLAB 中运行过程中每个线程所做的事。命令的
  格式如下： diary filename
   。当这个命令被执行后，所有在命令窗口\(The Command Windows\)中的输入和输出将会被
  记录在 diary 文件中。这是一个非常重要的工具，当MATLAB 发生错误而中断时，利用它 你可以重建重要的事件。diary off 命令中止写入 diary 文件，diary on 命令重新开始写入。
* 快捷键：

  * **ctrl + C**: 中断正在跑的程序
  * **ctrl + R**: 多行注释
  * **ctrl + T**: 多行去除注释
  * **ctrl + i**: 自动缩进对齐
  * **shift + TAB**: 多行向右缩进
  * **TAB**: 自动补全

* 清理

  ```matlab
  >> clc % 清空Command Window

  >> close all % 关闭所有图片窗口

  >> close(h) % 关闭图片窗口h (e.g., h = figure(1))

  >> clf % 清理当前图片窗口

  >> clear % 清空所有变量

  >> clear var1 var2 % 清理变量var1 var2 (注意用空格分隔)

  >> clearvars -except var3 var4 % 理除var3 var4以外的全部变量
  ```

* 查询：\[注意\] help, doc, edit 命令也可用于自定义函数，其帮助程度取决于该自定义函数的注释规范程度

* ```matlab
  >> help matlab_fun % Matlab内置函数matlab_fun的帮助(简略)

  >> doc matlab_fun % Matlab内置函数matlab_fun的说明文档(详细)

  >> edit matlab_fun % 打开内置函数matlab_fun的script (source code)

  >> pwd % 当前文本路径

  >> which some_fun % 找出build-in函数或自定义函数的具体路径

  >> class(var) % 获取变量var的类型

  >> dir() % 当前路径下的所有文件

  >> dir(’some_path\’) % 某路径下的所有文件

  >> dir(’some_path\*.m’) % 某路径下所有的matlab文件(同理，.jpg, .csv文件等等)
  ```
* 画图

  ```matlab
  >> title({‘line 01’, ‘line 02’, ’line 03’}) % 画图中的标题分成多行

  % 标题，坐标轴等均可使用LaTeX格式
  >> title('$$ax = b$$','interpreter','latex')
  >> xlabel(('$$ax = b$$','interpreter','latex')

  % 设定图像的坐标轴取值范围（统一取值范围，方便比较多幅图）
  >> axis([xmin, xmax, ymin, ymax])
  % 设定图像的颜色取值范围 （统一颜色深浅范围，方便比较heatmap）
  >> caxis([cmin, cmax])

  >> axis on (off) %(不)显示坐标轴
  >> grid on (off) % (不)添加网格

  % 自定义legend名称
  >> figure
  >> plot(x1, y1, ’DisplayName’, ’legend01’); hold on
  >> plot(x2,y2, ’DisplayName’, ’legend02’); hold off
  >> legend(’show')

  % 同时画很多图时，可以让它们dock在同一个窗口，避免出现无数悬窗
  >> h1 = figure(); h2 = figure();
  >> set(h1, 'WindowStyle','docked')
  >> set(h2, 'WindowStyle','docked')
  ```

* 其它

* ```matlab
  >>  addpath(genpath(pwd)) % 添加当前目录的所有子目录到搜索路径中

  % 程序运行完毕后提示音
  >> beep on;
  >> for i = 1:1e3; end  % script: 运行完毕后有提示音
  >> beep

  % 程序运行时间
  >> tic
  >> for i = 1:1e3; end % script 运行时间
  >> t = toc

  % 程序运行出错时停止
  >> dbstop if error
  >> MyScript % MyScript中的函数出错时，停止在错误处，而不是返回错误并且中断
  ```



