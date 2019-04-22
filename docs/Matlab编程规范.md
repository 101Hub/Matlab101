### 📌Matlab 编程规范\(Matlab Coding Style\)

* #### [命名规范（Naming Conventions）](#命名规范（naming-conventions）)

  * 变量（Variables）的命名规范

  * 常量（Constant）的命名规范

  * 结构体（Structure）的命名规范

#### 命名规范（Naming Conventions）

##### 变量（Variables）的命名规范：

* Write variable names in mixed case starting with lower case.  驼峰命名法

* ```
  linearity, credibleThreat, qualityOfLife
  ```
* Variables with a large scope should have meaningful names. Variables with a small scope can have short names. 常规变量使用有意义的命名，临时变量、结构变量可以使用短变量名。虚数推荐使用 1i or 1j 。

* Use the prefix n for variables representing the number of objects.  使用前缀n表示数量

* ```
  nFiles, nSegments 
  mRows
  ```
* Follow a consistent convention on pluralization. 复数的表示遵循一贯的准则

* ```
  point,   pointArray, PointList %推荐复数的表达
  thisPoint %推荐单数的表达
  ```
* Use the suffix No or Num or the prefix i in a variable name representing a single entity number.

* Prefix iterator variable names with i, j, k etc. 循环迭代推荐使用带前缀的变量，并且按顺序使用i,j,k

* ```matlab
  for iFile = 1:nFiles    
      for jPosition = 1:nPositions  
          :    
      end    
      : 
  end
  ```
* Avoid negated Boolean variable names.  避免使用否定形式的布尔变量

* ```
  %Use 

  isFound and ~isFound 

  %Avoid 

  isNotFound
  ```
* Acronyms, even if normally uppercase, should be written in mixed or lower case.

* ```
  % Use 
  html, isUsaSpecific, checkTiffFormat() 

  % Avoid 
  hTML, isUSASpecific, checkTIFFFormat()
  ```
* Avoid using a keyword or special value name for a variable name. 避免使用关键字作为变量

* ```
  iskeyword %判断是否是关键字
  ```
* Use common domain-specific names.

* ```
  %Use 
  roi, or regionOfInterest 
  %Avoid 
  imageRegionForAnalysis
  ```
* Avoid Variable Names That Shadow Functions. 避免与函数重名

* ```
  alpha, angle, axes, axis, balance, beta, contrast, gamma, image, info, input,
  length, line, mode, power, rank, run, start, text, type 
  %推荐加一个前缀或者后缀
  lengthCm, armLength, thisLength
  ```
* Avoid Hungarian notation. 避免匈牙利命名法

* ```
  %Use 
  thetaDegrees 
  %Avoid 
  uint8thetaDegrees %匈牙利命名法
  ```

> **骆驼命名法：**

**小驼峰法（camel方法）**变量一般用小驼峰法标识。第一个单词以小写字母开始；第二个单词的首字母大写或每一个单词的首字母都采用大写字母，例如：myFirstName、myLastName

**大驼峰法（Upper Camel Case）**也称为：帕斯卡命名法：（pascal方法）常用于类名，函数名，属性，命名空间。

下面是分别用骆驼式命名法和下划线法命名的同一个函数：

```
printEmployeePaychecks()；骆驼式命名法——函数名中的每一个逻辑断点都有一个大写字母来标记

print_employee_paychecks()；下划线法----函数名中的每一个逻辑断点都有一个下划线来标记。
```

##### 常量（Constant）的命名规范：

* Constant names with local scope \(within an mfile\) should be all uppercase using underscore to separate words. 
* ```
  %Use meaningful names for constants.  
  %Use 
  MAX_ITERATIONS 
  %Avoid 
  TEN, MAXIT
  ```
* Constants can be prefixed by a common type name.

* ```
  COLOR_RED, COLOR_GREEN, COLOR_BLUE
  ```

##### 结构体（Structure）的命名规范：

* Structure names should begin with a capital letter.
* The name of the structure is implicit, and need not be included in a fieldname.
* ```
  %Use 
  Segment.length 
  %Avoid 
  Segment.segmentLength
  ```



