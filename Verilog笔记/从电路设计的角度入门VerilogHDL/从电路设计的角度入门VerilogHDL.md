## 参考文献

[从电路设的计角度入门 Verilog HDL](https://www.bilibili.com/video/BV1PS4y1s7XW)

## 变量

### wire型
- 表示模块中的`连线`
- 仿真波形中`不可见`
- 默认位宽为`1bit`，使用时需要自定义位宽
### reg型
- 占用仿真环境的`物理内存`
- 仿真波形中`可见`
- 默认位宽为`1bit`，使用时需要自定义位宽
### 凡是...凡是...
- 凡是`always initial`语句中赋值的变量，一定是`reg型`
- 凡是`assign`语句中赋值的变量，一定是`wire型`
### 注意
- reg变量`仅仅是语法定义`，`不等于`电路中的`寄存器`
- 只有`时序逻辑电路`中的reg变量才会被逻辑综合工具`定义为``寄存器`

## 关键词
### 四个关键词
- `assign`
- `always`
- `if-else`
- `case`
- 使用verilog描述电路，仅需要上述四个关键词，如果描述不出来很可能是个人问题
- 其他关键词都是为描述`testbench`服务
### 禁止出现的关键词
- `for`
- `while`
- `function`
- `fork-join`
### assign 关键字
- 作用：对信号的*`连接`*，重命名，*`简单组合逻辑`*
- 赋值的对象应该是`wire类型`
- `=`右边的任何变化都会被立即计算驱动给等号左边
- 例子：
```verilog
    assign a = b | c;
    assign a = b ? c : d;
    assign a = d; 
```

### always块
- 后接`敏感列表`，用`@`表示
- `always@(a or b or c)`表示只要`a`，`b`，`c`中有一个产生变换，则执行该always块
- 一般包含`begin...end`语句组
- `always@(*)`表示自动将该always块中`所有引用的信号`都`自动添加`到敏感列表中
    - 防止漏掉敏感信号
    - `组合逻辑电路`
- `always@(posedge clk or negedge rst_n)`代表只在`clk上升沿`或`rst_n下降沿`执行该always块（**寄存器，描述时序逻辑**）
```verilog
    always@(posedge clk or posedge rst) begin
        ...
    end

    always@(posedge clk) begin
        ...
    end

    always@(negedge rst) begin
        ...
    end
```

### 2.1 电路结构描述方法
### 2.1.1 几种电路结构

- MUX
- 触发器与锁存器
- 组合逻辑
- 时序逻辑
- 存储器

#### 2.1.2 MUX

<img src="./MUX1.png" alt="MUX1" style="zoom:33%;" />

- 先加法，后选择

<img src="./MUX2.png" alt="MUX2" style="zoom:33%;" />

- 先选择，后加法
- 二者在性能和面积上有差别
- `if-else`，有优先级；`case`，没有优先级

#### 2.1.3 触发器与锁存器

<img src="./触发器与锁存器1.png" alt="触发器与锁存器1" style="zoom:33%;" />

<img src="./触发器与锁存器2.png" alt="触发器与锁存器2" style="zoom:33%;" />

- 触发器

<img src="./触发器与锁存器3.png" alt="触发器与锁存器3" style="zoom:33%;" />

> 异步复位触发器，复位信号为0时，复位；时钟上升沿，输出

<img src="./触发器与锁存器4.png" alt="触发器与锁存器4" style="zoom:33%;" />

> 触发器的Q值要比D晚一个时钟周期/触发器延时；
>
> 设计电路时，需要关注时序，上图中b比a晚一个时钟周期，c比b晚一个时钟周期；
>
> 写verilog的时候就要想清楚`时序`，时序是个人设计好的，而不是仿真工具产生的；
>
> 想要延时一个时钟周期，就用一个触发器实现；
>
> 想要延时两个时钟周期，就要用两个触发器实现（上图）

#### 2.1.4 组合逻辑（电路）

<img src="./组合逻辑电路1.png" alt="组合逻辑电路1" style="zoom:33%;" />

- 使用`always块`和`assign`实现相同组合逻辑：

<img src="./组合逻辑电路2.png" alt="组合逻辑电路2" style="zoom:33%;" />

<img src="./组合逻辑电路3.png" alt="组合逻辑电路3" style="zoom:33%;" />

**组合逻辑**的赋值方式，**必须使用`=`**，即**阻塞赋值**；

组合逻辑`无保存或者锁存功能`，因此，没有复位信号与相关的复位逻辑

#### 2.1.5 时序逻辑（电路）

DFF 是 D- Flip-Flop，即D触发器

<img src="./时序逻辑1.png" alt="时序逻辑1" style="zoom:33%;" />

#### 2.1.6 存储器

