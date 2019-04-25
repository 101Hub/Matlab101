### 🖌Matlab绘图技巧及经验总结

#### 基础绘图命令

```
figure(1)
x = linspace(0,2*pi,100);
y = sin(x);
y2 = cos(x);

%%指定坐标轴范围

xlim([xmin xmax]);
ylim([ymin ymax]);
zlim([zmin zmax]);

axis([xmin xmax ymin ymax zmin zmax])

%% 绘制子图
subplot(2,2,1)
x = linspace(0,10);
y1 = sin(x);
plot(x,y1)
title('Subplot 1: sin(x)')

subplot(2,2,2)
y2 = sin(2*x);
plot(x,y2)
title('Subplot 2: sin(2x)')

subplot(2,2,[3 4])
y3 = sin(3*x);
plot(x,y3)
title('Subplot 3/4: sin(3x)')


%%画在同一个figure中

% 方法一
plot(x,y,'--or') %LineSpec:线型、标记、颜色
hold on
plot(x,y2)
hold off

%方法二
plot(x,y1,'LineSpec1',x,y2,'LineSpec2')



%% title,legend,text的用法
title(['Temperature is ',num2str(c),' C'])%包含变量c
title({'First line';'Second line'})%分行

```

参考：

> [1.MATLAB绘图类型](https://ww2.mathworks.cn/help/matlab/creating_plots/types-of-matlab-plots.html)

#### 图形对象属性控制绘图参数：set/get

![](/assets/图形对象)

