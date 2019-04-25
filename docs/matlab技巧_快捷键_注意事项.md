### 📌Matlab 技巧、快捷键及注意事项

#### 1. 一些常用及非常有效的 matlab 命令及使用技巧

> 参考：
>
> 1. [What are some cool MATLAB tricks?](https://www.quora.com/What-are-some-cool-MATLAB-tricks)
>
> 2. [有哪些让人相见恨晚的 MATLAB 命令？](https://www.zhihu.com/question/24499729)

* ##### 快捷键：

  * **ctrl + C**: 中断正在跑的程序
  * **ctrl + R**: 多行注释
  * **ctrl + T**: 多行去除注释
  * **ctrl + i**: 自动缩进对齐
  * **shift + TAB**: 多行向右缩进
  * **TAB**: 自动补全
  * **ALT:**如果要复制或删除多列数据（而不是若干行），或者要一次性编辑多行，该功能非常有用。要选择一个矩形区域，请在进行选择时按**Alt**键。
* ##### 清理

  ```matlab
  >> clc % 清空Command Window

  >> close all % 关闭所有图片窗口

  >> close(h) % 关闭图片窗口h (e.g., h = figure(1))

  >> clf % 清理当前图片窗口

  >> clear % 清空所有变量

  >> clear var1 var2 % 清理变量var1 var2 (注意用空格分隔)

  >> clearvars -except var3 var4 % 理除var3 var4以外的全部变量

  >> save filename.mat var1 var2 %保存变量var1/var2至文件filename.mat中，支持通配符*
  ```
* ##### 查询：

> \[注意\] help, doc, edit 命令也可用于自定义函数，其帮助程度取决于该自定义函数的注释规范程度

* ```matlab
  >> help matlab_fun % Matlab内置函数matlab_fun的帮助(简略)

  >> doc matlab_fun % Matlab内置函数matlab_fun的说明文档(详细)

  >> edit matlab_fun % 打开内置函数matlab_fun的script (source code)

  >> demo matlab_fun % 打开demo程序

  >> diary on;

  >> diary off;

  >> diary filename; %保存命令历史记录

  >> pwd % 当前文本路径

  >> which some_fun % 找出build-in函数或自定义函数的具体路径

  >> class(var) % 获取变量var的类型

  >> dir() % 当前路径下的所有文件

  >> dir(’some_path\’) % 某路径下的所有文件

  >> dir(’some_path\*.m’) % 某路径下所有的matlab文件(同理，.jpg, .csv文件等等)
  ```
* ##### 画图

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
* ##### 其它
* ```matlab
  >>  addpath(genpath(pwd)) % 添加当前目录的所有子目录到搜索路径中

  % 程序运行完毕后提示音
  >> beep on;
  >> for i = 1:1e3; end  % script: 运行完毕后有提示音
  >> beep

  % 程序运行时间
  >> tic
  >> for i = 1:1e3; end % script 运行时间
  >> t = toc %disp('程序的运行时间为'+num2str(toc))

  % 程序运行出错时停止
  >> dbstop if error
  >> MyScript % MyScript中的函数出错时，停止在错误处，而不是返回错误并且中断
  ```

#### 2.一些注意事项

* 编程隐患 变量名、函数名字母大小写敏感，以字母开头，最大字符数namelengthmax。
* 那种既可以用向量可以解决的问题，也可以用循环解决的问题，最好用向量解决，这
  是因为向量执行的速度快。
* 如果用可能的话，可用逻辑函数选择数组中的元素。如果逻辑数组进行运算，要比循
  环快得多。



