# Problem Set 2

## 1. (WARP and demand)

Let $(p,w)$ and $(p',w')$ be two price-wealth situations for which
$$
(\underbrace{p\cdot x(p',w')\leq w}_{1} \quad and \quad 
\underbrace{x(p',w')\neq x(p,w)}_{2} \implies 
\underbrace{p'\cdot x(p,w)> w'}_{3})
$$

### 1(a)

$p\cdot x \leq w$ : $x$ is affordable at $p,w$ 

* $(p,w) \rightarrow x(p,w)$             state 1
* $(p',w')\rightarrow x(p',w')$        state 2



1. choice in state 2 is affordable in state 1

2. different choices in state 1 and state 2

3. choice in state 1 is not affordable in the state 2



### 1(b)

$$
condition(1) \implies WARP \\
\lnot WARP \implies \lnot condition(1)
$$

Assume $\exists x_1,x_2 \in B_1,B_2$ and $x_1 \in C(B_1),x_2 \in C(B_2)$ but $x_1\notin C(B_2)$ 
$$
B_1=B(p,w)=\{x:p\cdot x\leq w\} \\
B_2=B(p',w')=\{x:p'\cdot x\leq w'\}
$$

$$
x_1 \in B_2 \Longleftrightarrow x_1 \in B(p',w') 
\Longleftrightarrow p'\cdot x_1 \leq w' \\
x_2 \in B_1 \Longleftrightarrow x_2 \in B(p,w) 
\Longleftrightarrow p\cdot x_2 \leq w \\
x_1 \neq x_2 \quad x_1=x(p,w) \quad x_2=x(p',w')
$$

$$
p'\cdot x_1=p'\cdot x(p,w) \leq w' \\
p \cdot x_2=p\cdot x(p',w') \leq w \\
p'\cdot x(p,w) \neq p\cdot x(p',w')
$$

Condition(1) is violated.



### 1(c)



## 2. (Non-continuous preferences)

### 2(a)

$$
x \succeq y \quad \Longleftrightarrow \quad
[x_1 \succ y_1] \quad or \quad [x_1=y_1 \wedge x_2 \succeq y_2]
$$

Rational

* Completeness: assume $x \nsucceq y$
  $$
  x \nsucceq y \quad \Longleftrightarrow \quad 
  [y_1 \succ x_1] \quad or \quad 
  [y_1=x_1 \wedge y_2 \succ x_2] \quad 
  \Longleftrightarrow \quad 
  y \succeq x
  $$

* Transitivity: $\forall x,y,z$, assume $x \succeq y$ and $y \succeq z$ 
  $$
  x\succeq y \Longleftrightarrow [x_1 \succ y_1] \or [x_1=y_1 \and x_2 \succeq y_2] \\
  y\succeq z \Longleftrightarrow [y_1 \succ z_1] \or [y_1=z_1 \and y_2 \succeq z_2]
  $$

  $$
  [x_1\succ y_1]\and[y_1 \succ z_1] \implies x_1 \succ z_1 \\
  [x_1\succ y_1]\and[y_1=z_1\and y_2 \succeq z_2] \implies x_1 \succ z_1 \\
  [x_1=y_1 \and x_2 \succeq y_2]\and [y_1 \succ z_1] \implies x_1 \succ z_1 \\
  [y_1=z_1\and y_2 \succeq z_2]\and [x_1=y_1 \and x_2 \succeq y_2] \implies x_1 = z_1 \and x_2 \succeq z_2 \\
  \therefore [x_1 \succ z_1]\and[x_1 = z_1 \and x_2 \succeq z_2]
  \Longleftrightarrow x_1 \succeq z_1 \\
  $$


Strong Monotonicity 
$$
\text{To show:}
\begin{cases}
x\geq y \quad(\forall i\quad x_i\geq y_i) \\
x\neq y
\end{cases}\implies
x\succ y
$$

* Case 1:
  $$
  \begin{cases}
  x_1=y_1 \\
  x_2\geq y_2 \\
  x_2\neq y_2
  \end{cases}\implies
  x\succ y
  $$

* Case 2:
  $$
  \begin{cases}
  x_1>y_1 \\
  x_2\geq y_2
  \end{cases}\implies
  x\succ y
  $$

Convexity
$$
\text{To show:}
\begin{cases}
y\succeq x \\
z\succeq x
\end{cases}\implies
\forall\lambda\in(0,1):\lambda y+(1-\lambda)z\succ x
$$

$$
\begin{align}
\underbrace{[y_1>x_1]}_{1}\quad\text{or}&\quad\underbrace{[y_1=x_1\and y_2\geq x_2]}_{2} \\
\underbrace{[z_1>x_1]}_A\quad\text{or}&\quad\underbrace{[z_1=x_1\and z_2\geq x_2]}_B
\end{align}
$$

* Case 1 (1A or 1B or 2A):
  $$
  \text{One of the cases}
  \begin{cases}
  [y_1>x_1] \and [z_1>x_1] \\
  [y_1>x_1] \and [z_1=x_1] \\
  [y_1=x_1] \and [z_1>x_1]
  \end{cases}\implies
  \lambda y_1+(1-\lambda)z_1>x_1\implies
  \lambda y+(1-\lambda)z\succ x
  $$

* Case 2 (2B):
  $$
  \begin{cases}
  y_1=z_1=x_1 \\
  y_2\geq x_2 \\
  z_2\geq x_2
  \end{cases}
  $$

  $$
  y\neq z\implies z_2\neq y_2\implies[z_2>x_2]\or[y_2>x_2]\implies
  \lambda y_2+(1-\lambda)z_2>x_2\implies\lambda y(1-\lambda)z\succ x
  $$

### 2(b)

No, we cannot find a utility function that represents these $\succeq$ 

*Proof by contradiction*

Assume $\exists u(\cdot)$ representing $\succeq$ 
$$
\forall x_1\to(x_1,2)\succ(x_1,1)\implies u(x_1,2)>u(x_1,1) 
$$
We know:
$$
\exists r(x_1)\in\mathbb{Q}\implies u(x_1,2)>r(x_1)>u(x_1,1) \\
\forall x_1,x_2\in\mathbb{R},\text{if }x_1<x_2\implies r(x_1)<u(x_1,2)<u(x_2,1)<r(x_2) \\
r(\cdot)\text{ is strictly increasing}\implies r\text{ is injective} \\
r(\cdot):\mathbb{R}\to\mathbb{Q}\quad\text{contradiction}(|\mathbb{R}|>|\mathbb{Q}|)
$$

### 2(c)

Continuity
$$
\forall n, x_n\succeq y_n\implies\lim_{n\to\infty}x_n\succeq\lim_{n\to\infty}y_n
$$
A counter example
$$
\begin{cases}
x_n=(\frac{1}{n},0) \\
y_n=(0,1)
\end{cases}\implies
\forall n,x_n\succ y_n\implies\forall,x_n\succeq y_n
$$
Note: if the first coordinate is different, then we only look at the first coordinate.
$$
\begin{cases}
\lim\limits_{n\to\infty}x_n=\lim\limits_{n\to\infty}(\frac{1}{n},0)=(0,0) \\
\lim\limits_{n\to\infty}y_n=\lim\limits_{n\to\infty}(0,1)=(0,1)
\end{cases}\implies
\lim_{n\to\infty}y_n\succeq\lim_{n\to\infty}x_n
$$


### 3. (Preferences and Utility)

### 3(a)

$$
x\succeq y \Longleftrightarrow x \geq y \Longleftrightarrow x_l \geq y_l \quad \forall l
$$

$$
L=1 \\
u(x)=x \\
u(x)\geq u(y) \\
x \succeq y \\
x \geq y
$$

$$
L=2 \\
\succeq \quad \text{not rational}\\
\succeq \quad \text{not complete} \\
\text{Example:}\\
x=\begin{pmatrix}1\\0\end{pmatrix},
y=\begin{pmatrix}0\\1\end{pmatrix}\\
x_1>y_1 \and x_2<y_2 \implies x \nsucceq y
$$

Therefore, these preferences cannot be represented by a utility function.



### 3(b)



## 4. (Preferences and Utility)

$$
u(x,y)=3\ln(x)+2\ln(y)
$$

### 4(a)

* Convex $\Longleftrightarrow$ Quasi-concave

  * $\ln(\cdot)$ is strictly concave
  * sum of concave functions is concave
  * $u(x,y)$ is strictly concave
  * $u(x,y)$ is quasi-concave
  * Preferences are strictly convex

* Continuous

  * $\ln(\cdot)$ is continuous
  * $u(x,y)$ is continuous

* Monotonic
  $$
  \frac{\partial u(x,y)}{\partial x}=\frac{3}{x} >0 \\
  \frac{\partial u(x,y)}{\partial y}=\frac{2}{y} >0
  $$

* LNS

  Monotonicity $\implies$ LNS



### 4(b)

$$
v=f(u)=\exp (\frac{u}{5}) \\
v(x,y)=\exp\frac{{u(x,y)}}{5}=\exp\left(\frac{3\ln(x)+2\ln(y)}{5}\right)
=x^{\frac{3}{5}}\cdot y^{\frac{2}{5}}\\
v(\lambda x,\lambda y)=
(\lambda x)^{\frac{3}{5}}\cdot (\lambda y)^{\frac{2}{5}}=\lambda v(x,y)
$$

MRS is homotheic of degree 1.


$$
MRS(x,y)=\frac{\frac{\partial u(x,y)}{\partial x}}{\frac{\partial u(x,y)}{\partial y}}=\frac{3}{x}\cdot \frac{y}{2}=\frac{3y}{2x}
$$

$$
u(\lambda x,\lambda y)=3\ln(\lambda x)+2\ln(\lambda y)\\
MRS(\lambda x,\lambda y)=
\frac{\frac{\partial u(\lambda x,\lambda y)}{\partial x}}{\frac{\partial u(\lambda x,\lambda y)}{\partial y}}=
\frac{3}{\lambda x}\cdot \frac{\lambda y}{2}=\frac{3y}{2x}\\
$$

$$
MRS(x,y)=MRS(\lambda x,\lambda y)
$$

MRS is homothetic of degree 0.



## 5. (Demand and Utility)

### 5(a)

Zero-homogeneity
$$
x_l(\lambda p,\lambda w)=\frac{\lambda w}{\sum_{i=1}^{L}\lambda p_i}
=\frac{w}{\sum_{i=1}^{L}p_i}=x_l(p,w) \\
$$
Walras' Law
$$
p\cdot x=\sum_{i=1}^{L}p_i\cdot x_l(p,w)=
\sum_{l=1}^{L}p_l\cdot \frac{w}{\sum_{i=1}^{L}p_i}=w
$$


### 5(b)

$$
\begin{align*}
D_px(p,w)&=
\begin{pmatrix}
\frac{\partial x_1(p,w)}{\partial p_1}&\cdots
&\frac{\partial x_1(p,w)}{\partial p_L} \\
\vdots & \ddots & \vdots \\
\frac{\partial x_L(p,w)}{\partial p_1} &
\cdots & 
\frac{\partial x_L(p,w)}{\partial p_L}
\end{pmatrix}
\\
&=
\begin{pmatrix}
-\frac{w}{(\sum_{i=1}^Lp_i)^2} & \cdots & 
-\frac{w}{(\sum_{i=1}^Lp_i)^2}\\
\vdots & \ddots & \vdots \\
-\frac{w}{(\sum_{i=1}^Lp_i)^2} & 
\cdots & -\frac{w}{(\sum_{i=1}^Lp_i)^2}
\end{pmatrix}
\end{align*}
$$





### 5(c)

$$
\frac{\partial x_l(p,w)}{\partial p_k} \geq 0 \implies 
\text{good $l$ is a gross  substitute for good $k$}
$$

### 5(d)

Leontief Utility Function
$$
\mathscr{A}
\mathscr{B}
$$