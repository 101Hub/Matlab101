### 📌Matlab 编程规范\(Matlab Coding Style\)

* [命名规范（Naming Conventions）](#命名规范（naming-conventions）)
  * 变量（Variables）的命名规范
  * 常量（Constant）的命名规范
  * 结构体（Structure）的命名规范
  * 函数（Functions）的命名规范
  * 通用（General）的命名规范

#### 命名规范（Naming Conventions）

##### 变量（Variables）的命名规范：

* Write variable names in mixed case starting with lower case.  驼峰命名法

* ```matlab
  linearity, credibleThreat, qualityOfLife
  ```
* Variables with a large scope should have meaningful names. Variables with a small scope can have short names. 常规变量使用有意义的命名，临时变量、结构变量可以使用短变量名。虚数推荐使用 1i or 1j 。

* Use the prefix n for variables representing the number of objects.  使用前缀n表示数量

* ```matlab
  nFiles, nSegments 
  mRows
  ```
* Follow a consistent convention on pluralization. 复数的表示遵循一贯的准则

* ```matlab
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

* ```matlab
  %Use 
  isFound and ~isFound 

  %Avoid 
  isNotFound
  ```
* Acronyms, even if normally uppercase, should be written in mixed or lower case.

* ```matlab
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

* ```matlab
  %Use 
  roi, or regionOfInterest 

  %Avoid 
  imageRegionForAnalysis
  ```
* Avoid Variable Names That Shadow Functions. 避免与函数重名

* ```matlab
  alpha, angle, axes, axis, balance, beta, contrast, gamma, image, info, input,
  length, line, mode, power, rank, run, start, text, type 

  %推荐加一个前缀或者后缀
  lengthCm, armLength, thisLength
  ```
* Avoid Hungarian notation. 避免匈牙利命名法

* ```matlab
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

##### 函数（Functions）的命名规范

* Write names of functions in lower or mixed case.
* ```
  predictSeaLevel, publishHelpPages
  ```
* Use meaningful function names. 
* ```
  %Use 
  computeTotalWidth 

  %Avoid 
  compwid
  ```
* Name functions that have a single output based on the output. 单输出函数以函数输出命名。
* Functions with no output argument or which only return a handle should be named after what they do. 
* Reserve the prefixes get/set for functions that access an object or property. 保留get/set关键字前缀
* ```
  getobj, setAppData
  ```
* Reserve the prefix compute for functions where something is computed. 保留compute前缀
* ```
  computeWeightedAverage,  computeSpread
  ```
* Consider reserving the prefix find for functions where something is looked up.
* ```
  findOldestRecord,  findTallestMan
  ```
* Consider using the prefix initialize where an object or a variable is established.

```
initializeProblemState
```

* Use the prefix is has/can/should  for Boolean functions. 关键字前缀is用于布尔函数
* Use complement names for complement operations. 
* ```
  get/set, add/remove, create/destroy, start/stop, 
  insert/delete, increment/decrement, old/new, 
  begin/end, first/last, up/down, min/max, next/previous, 
  open/close, show/hide, suspend/resume, etc.
  ```
* Avoid unintentional shadowing.  Names can be checked for shadowing using which -all or exist. 

##### 通用（General）的命名规范

* Consider a unit suffix for dimensioned variables and constants. 
* Minimize abbreviations in names. 
* ```
  %Use 
  computeArrivalTime  
  %Avoid 
  comparr
  ```
* Consider making names pronounceable. 
* Write names in English. 

#### 布局、注释及文档规范（Layout, Comments and Documentation ）

##### 布局（Layout）

* Keep content within the first 80 columns. 
* Split long lines at graceful places. In general:  Break after a comma or space.  Break after an operator.

* ```matlab
   totalSum = a + b + c + …            
   d + e; 
   function (param1, param2,…
              param3) 
   setText ([‘Long line split’ …
             ‘into two parts.’]);
  ```
* Indent 3 or 4 spaces.

* Indent consistently with the MATLAB Editor.

* Write one executable statement per line of code.

* Short single statement if, for or while statements can be written on one line.

* ```matlab
  if(condition), statement; end 

  while(condition), statement; end 

  for iTest = 1:nTest, statement; end
  ```

##### 空格（Space）

* Surround =, &&, and \|\| by spaces. 
* ```
  simpleSum = firstTerm+secondTerm;
  ```
* Conventional operators can be surrounded by spaces.

* ```
  simpleAverage = (firstTerm + secondTerm) / two; 

  for index = 1 : nIterations
  ```
* Commas can be followed by a space.

* ```
  foo(alpha, beta, gamma) 

  foo(alpha,beta,gamma)
  ```
* Follow semicolons or commas for multiple commands in one line by a space character.

* ```
  if (pi>1), disp(‘Yes’), end
  ```
* Follow keywords by a space.

* Separate logical groups of statements within a block by one blank line.

* Separate blocks by more than one blank line.

* Use alignment wherever it enhances readability.

* ```
  value = (10 * nDimes) + …
          (5 * nNickels) + …
          (1 *  nPennies);
  ```

##### 注释（Comments）

* Make the comments easy to read.  
* Write comments in English. 
* Header comments 
  * Present the function syntax in header comments. 
  * Describe any side effects in the header comments. 
  * Write the function name in comments using its actual case. 
  * Avoid clutter in display of the function header. 
* Inline comments 
  * Comments cannot justify poorly written code. 
  * Make the comments agree with the code, but do more than just restate the code.
  * Indent code comments the same as the statements referred to.
  * Minimize use of end of line comments. 
  * Commenting for documentation. 
  * Comments for publishing 

#### 文件及组织架构（Files and Organization）

##### M文件

* Modularize.
* Make interaction clear. 
* Partitioning 
* Use existing functions. 
* Any block of code appearing in more than one mfile should be considered for writing as a function.
* Use structures for function arguments. 
* Provide some generality in functions .
* Subfunctions 
* Test scripts .Write a test script for every function. 

##### 输入和输出（Input and Output）

* Make input and output modules. 
* Format output for easy use.

> If the output will most likely be read by a human, make it self- descriptive and easy to read. If the output is more likely to be read by software than a person, make it easy to parse. If both are important, make the output easy to parse and write a formatter function to produce a human readable version.

* Use feof for reading files. 
* Toolboxes 

> Organize m-files that have some generality in toolboxes. Check the function names for shadowing.

#### 声明（Statements）

##### 变量和常量（Variables and constants ）

* Variables should not be reused unless required by memory limitation. 
* Consider documenting important variables in comments near the start of the file.  
* ```
  % pointArray    Points are in rows. 
 
  THRESHOLD = 10; % Maximum noise level found. 
  ```

##### 全局（Globals ）

* Minimize use of global constants. 

> Use an m-file or mat file to define global constants. This practice makes it clear where the constants are defined and discourages unintentional redefinition. If the m-file access overhead produces an execution speed problem, consider using a function handle.

* Minimize use of global variables.  

> Clarity and maintainability of functions benefit from explicit argument passing rather than use of global variables. Some use of global variables can be replaced with the cleaner persistent or with getappdata. An alternative strategy is to replace the global variable with a function.

##### 循环（Loops）

* Initialize loop result variables immediately before the loop. 
* ```matlab
  result = nan(nEntries,1); 
  for index = 1:nEntries    
      result(index) = foo(index); 
  end
  ```

* Minimize the use of break in loops. 
* Minimize use of continue in loops. 
* The end lines in nested loops can have identifying comments .



