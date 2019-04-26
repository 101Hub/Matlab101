### 🏹Matlab向量化编程

MATLAB®针对涉及矩阵和向量的运算进行了优化。修正基于循环且面向标量的代码以使用 MATLAB 矩阵和向量运算的过程称为_向量化_。由于多种原因，代码的向量化是可取的：

* _外观_：向量化的数学代码在外观上更像教科书中的数学表达式，从而使代码更便于理解。

* _不容易出错_：由于不带循环，向量化的代码通常更短。代码行的减少意味着引入编程错误的机会也减少了。

* _性能_：向量化代码的运行速度通常比相应的、包含循环的代码更快。

#### 代码向量化

```
for i = 1:100
 for j = 1:100
 r(i,j) = sqrt(i^2+j^2);
 end
end

%向量化代码
 [i,j]=meshgrid(1:100,1:100);
 r = sqrt(i.^2+j.^2);
```

#### 逻辑数组

1.寻找大于6的元素

```
 X=1:10
 V=X>6
 X(V)
%or, more succinctly,
 X=1:10
 X(X>6)
```

2.分段函数

```
function y = fun(x)
y = (x<1)*x + (x>=1&x<2)*x^2 + (x>=2)*x^3;
return
% 当然，也乐意直接写成匿名函数的形式
f = @(x) (x<1)*x + (x>=1&x<2)*x^2 + (x>=2)*x^3;
```

#### 向量化函数

1.repmat函数

```
%Create a 1000 by 1000 vector full of 7s
1. X=7*ones(1000,1000);
2. X=repmat(7,1000,1000);
```



#### 内联函数、匿名函数

1.inline内联函数

```
close all; clear all; clc;
f=inline('x^2+2*x+1')
g=inline('x^2+y^2')
h=inline('sin(x)+log(y)')
f2=f(2)
g23=g(2,3)
h23=h(2,3)
```

2.@匿名函数

```
a = pi;
b = 15;
f = @(x,y) (a*x+b*y);
fsurf(f);
title('f(x,y) = ax+by, a = \pi, b = 15');

f = @(x) x.^2;
g = @(x) 3*x;
h = @(x) g(f(x));
h(3)
```

3.函数句柄

```
str2func('@(x,y)sin(x*y)') %  str -> @func 返回一个函数句柄

syms x y
fs(x,y) = x^2+sin(x*y);
fh=matlabFunction(fs); % symfun -> @func 返回一个函数句柄 ！！！强烈推荐

fh = @(x)x.^2+sin(x);
fun2str(fh)    % @func ->str 函数句柄变为字符
```



