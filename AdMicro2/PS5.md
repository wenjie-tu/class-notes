# Problem Set 5

## 1

### 1(a)

$$
\begin{align}
P(L_1)&=1 \\
P(L_2)&=\frac{2}{3}P(L_1)=\frac{2}{3} \\
P(c_1)&=P(c_1|L_1)P(L_1)+P(c_1|L_2)P(L_2) \\
&=\frac{1}{3}\times 1+\frac{2}{3}\times \frac{1}{4} \\
&=\frac{1}{2} \\
P(c_2)&=P(c_2|L_2)P(L_2)=\frac{1}{3}\times\frac{2}{3}=\frac{2}{9} \\
P(c_3)&=P(c_3|L_2)P(L_2)=\frac{5}{12}\times\frac{2}{3}=\frac{5}{18}
\end{align}
$$

### 2(b)

**Method 1**
$$
\begin{align}
P(c_1)&=\frac{1}{3}\times\frac{1}{4}+
\left(\frac{2}{3}\times\frac{1}{4}\right)\frac{1}{3}\times\frac{1}{4}+
\left(\frac{2}{3}\times\frac{1}{4}\right)^2\frac{1}{3}\times\frac{1}{4}+\cdots \\
&=\frac{1}{3}\times\frac{1}{4}\sum_{i=0}^{\infty}
\left(\frac{2}{3}\times\frac{1}{4}\right)^i \\
&=\frac{1}{12}\sum_{i=0}^{\infty}\left(\frac{1}{6}\right)^i \\
&=\frac{1}{12}\times\frac{6}{5} \\
&=\frac{1}{10}
\end{align}
$$

$$
P(c_1)+P(c_2)=1 \implies P(c_2)=1-P(c_1)=\frac{9}{10}
$$

$$
\begin{align}
P(L_2)&=\frac{1}{3}+\left(\frac{2}{3}\times\frac{1}{4}\right)\frac{1}{3}+
\left(\frac{2}{3}\times\frac{1}{4}\right)^2\frac{1}{3}+\cdots \\
&=\frac{1}{3}\sum_{i=0}^{\infty}\left(\frac{2}{3}\times\frac{1}{4}\right)^i \\
&=\frac{1}{3}\sum_{i=0}^{\infty}\left(\frac{1}{6}\right)^i \\
&=\frac{1}{3}\times\frac{6}{5} \\
&=\frac{2}{5}
\end{align}
$$

$$
\begin{align}
P(c_2)&=P(c_2|L_2)P(L_2)+\frac{2}{3}\times\frac{3}{4}+
\left(\frac{2}{3}\times\frac{1}{4}\right)\frac{2}{3}\times\frac{3}{4}+
\left(\frac{2}{3}\times\frac{1}{4}\right)^2\frac{2}{3}\times\frac{3}{4}+\cdots\\
&=\frac{3}{4}\times\frac{2}{5}+\frac{2}{3}\times\frac{3}{4}
\sum_{i=0}^{\infty}\left(\frac{2}{3}\times\frac{1}{4}\right)^i \\
&=\frac{3}{10}+\frac{1}{2}\sum_{i=0}^{\infty}\left(\frac{1}{6}\right)^i \\
&=\frac{3}{10}+\frac{1}{2}\times\frac{6}{5} \\
&=\frac{9}{10}
\end{align}
$$

**Method 2**
$$
\begin{cases}
n(L_1)=1+\frac{1}{4}n(L_3) \\
n(L_3)=\frac{2}{3}n(L_1)
\end{cases}
\implies
\begin{cases}
n(L_1)=\frac{6}{5} \\
n(L_3)=\frac{4}{5}
\end{cases}
$$

$$
\begin{align}
n(L_2)&=\frac{1}{3}n(L_1)=\frac{2}{5} \\
n(c_1)&=\frac{1}{4}n(L_2)=\frac{1}{10} \\
n(c_2)&=\frac{3}{4}n(L_2)+\frac{3}{4}n(L_3)=\frac{9}{10}
\end{align}
$$

## 2

* $n=4$ 
* vNM utility function: $U(L)=\sum p_lu_l$ 

### 2(a)

$$
\begin{align}
U(L_1)&=\frac{1}{2}u_1+\frac{1}{2}u_4 \\
U(L_2)&=\frac{1}{2}u_2+\frac{1}{2}u_3
\end{align}
$$

We know that
$$
\begin{align}
u_1-u_2&>u_3-u_4 \\
u_1+u_4&>u_2+u_3 \\
U(L_1)&>U(L_2) \\
L_1&\succ L_2
\end{align}
$$

### 2(b)

It depends. **Strictly monotonic transformation** $f:U\rightarrow f(U)$

**BUT** $f(U)$ might not be a vNM utility function

Bernoulli utility $u$ is not ordinal

**Example: **
$$
\begin{cases}
u_1=1 \\
u_2=2 \\
u_3=3
\end{cases}
$$

$$
\begin{cases}
L_1=(\frac{1}{2},0,\frac{1}{2}) \\
L_2=(0,1,0)
\end{cases}
$$

$$
\begin{cases}
U(L_1)=\frac{1}{2}(u_1+u_3)=2 \\
U(L_2)=u_2=2
\end{cases}
\implies L_1\sim L_2
$$

$$
f(x)=x^2 \implies
\begin{cases}
f(U(L_1))=U^2(L_1)=4 \\
f(U(L_2))=U^2(L_2)=4
\end{cases}
$$

$f(U(L))=(\sum p_iu_i)^2$ is not a vNM utility function (not linear in probability).
$$
\begin{cases}
f(u_1)=u_1^2=1 \\
f(u_2)=u_2^2=4 \\
f(u_3)=u_3^2=9
\end{cases}
$$

$$
\begin{cases}
\overline{U}(L_1)=\frac{1}{2}(f(u_1)+f(u_2))=5 \\
\overline{U}(L_2)=f(u_2)=4
\end{cases}
\implies L_1\succ L_2
$$

## 3

$U$ is a vNM utility function
$$
\tilde{U}(L)=\beta U(L)+\gamma
$$

* $\tilde{U}$ is a vNM utility function
  $$
  \begin{align}
  \tilde{U}(L)&=\beta U(L)+\gamma \\
  &=\beta\sum_{l=1}^Lp_lu_l+\gamma \quad \sum_{l=1}^L p_l=1 \\
  &=\sum_{l=1}^Lp_l\underbrace{(\beta u_i-\gamma)}_{\tilde{u}_l} \\
  &=\sum_{l=1}^Lp_l\tilde{u}_l
  
  \end{align}
  $$
  $\tilde{u}$ is a vNM utility function

* $\tilde{U}$ represents the same preferences $\succeq$
  $$
  \begin{align}
  L&\succeq L' \\
  U(L)&\geq U(L') \\
  \beta U(L)&\geq \beta U(L') \\
  \beta U(L)+\gamma&\geq \beta U(L')+\gamma \\
  \tilde{U}(L)&\geq \tilde{U}(L')
  \end{align}
  $$
  $U$ and $\tilde{U}$ represent the same preferences



## 4

$$
\begin{align}
L\sim L' &\iff L\succeq L' \and L'\succeq L \\
L\succeq L' &\iff \alpha L+(1-\alpha)L''\succeq\alpha L'+(1-\alpha)L'' \\
L'\succeq L &\iff \alpha L'+(1-\alpha)L''\succeq\alpha L+(1-\alpha)L'' \\
\end{align}
$$

$$
\alpha L+(1-\alpha)L''\sim L'+(1-\alpha)L''
$$

## 5

### 5(a)

$$
F_L(x)=P(L\leq x)=
\begin{cases}
0, & x<\frac{2}{3} \\
1, & x\geq \frac{2}{3}
\end{cases}
$$

$$
U(F_L)=\int_0^{\infty}u(x)dF_L(x)=1\times u(\frac{2}{3})=\sqrt{\frac{2}{3}}
$$

* Whenever $F_L$ is a step function
  $$
  \int u(x)dF_L(x)=\sum_{i=1}^Nu(x_i)p(x_i)
  $$

* Whenever $F_L$ is continuously differentiable: $F_L'=f_L$
  $$
  \int u(x)dF_L(x)=\int u(x)f_L(x)dx
  $$

### 5(b)

$$
F_L(x)=\int_0^x f_L(t)dt=x
$$

$$
F_L(x)=
\begin{cases}
0, & x<0 \\
x, & 0\leq x\leq 1 \\
1, & x>1
\end{cases}
$$

$$
U(L)=\int_0^1 u(x)dF_L(x)=\int_0^1u(x)f_L(x)dx=\int_0^1\sqrt{x}dx=
\frac{2}{3}x^{\frac{3}{2}}|_0^1=\frac{2}{3}
$$

### 5(c)

$$
\begin{gather}
c(F_L,\sqrt{\cdot})=CE \\
u(CE)=U(L) \\
\sqrt{CE}=\int_0^1u(x)dF_L(x)=\frac{2}{3} \\
CE=\left(\frac{2}{3}\right)^2=\frac{4}{9}
\end{gather}
$$

