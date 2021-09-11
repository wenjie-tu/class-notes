# Problem Set 4

## 1

Quasilinear preference
$$
\begin{gather}
X=(-\infty,\infty)\times\mathbb{R}_+^{L-1} \\
(x_1,x_2,\cdots,x_L)\in(-\infty,\infty)
\times\mathbb{R}_+\times\mathbb{R}_+\cdots\times\mathbb{R}_+ \\
x_1\in\mathbb{R}\quad x_1,x_2,\cdots,x_L\geq0
\end{gather}
$$
**Proposition 1.6**
$$
u(x)=x_1+g(x_2,\cdots,x_L)
$$

$$
u(x) \text{ is strictly increasing in } x_1 \quad\implies\quad p\cdot x=w
$$

### 1(a)

$$
\begin{gather}
\max \quad x_1+g(x_2,\cdots,x_L) \\
\text{s.t.}\quad\sum_{l=1}^Lp_lx_l\leq w \quad 
x_l\geq0\space\forall\space l=2,\cdots,L
\end{gather}
$$

$$
\begin{align}
\sum_{l=1}^Lp_lx_l&= w \\
p_1x_1+\sum_{l=2}^Lp_lx_l&= w \\
x_1+\sum_{l=2}^Lp_lx_l&= w \\
x_1&=w-\sum_{l=2}^Lp_lx_l
\end{align}
$$

Recall Karush-Kuhn-Tucker conditions:
$$
\begin{align}
\min\quad & f(x)\\
\text{s.t.}\quad & h(x)\leq 0
\end{align}
$$

$$
\begin{align}
\mathcal{L}=f(x)+\mu\cdot h(x) \\
\begin{cases}
\mu\geq 0 \\
\mu\cdot h(x)=0
\end{cases}
\end{align}
$$

$$
\begin{align}
\min \quad & (-x_1-g(x_2,\cdots,x_L)) \\
\text{s.t.}\quad &
\begin{cases}
x_1=w-\sum\limits_{l=2}^Lp_lx_l \\
-x_l\leq 0\quad\forall\space l=2,\cdots,L
\end{cases}
\end{align}
$$

$$
\begin{align}
\min \quad & \sum_{l=2}^Lp_lx_l-w-g(x_2,\cdots,x_L) \\
\text{s.t.}\quad & -x_l\leq0\quad \forall\space l=2,\cdots,L
\end{align}
$$

Use the Lagrangian function:
$$
\mathcal{L}(x,\mu)=\sum_{l=2}^Lp_lx_l-w-g(x_2,\cdots,x_L)+
\sum_{l=2}^L\mu_l(-x_l)
$$
FOC:
$$
\frac{\partial\mathcal{L}}{\partial x_i}=
p_i-\frac{\partial g(x_2,\cdots,x_L)}{\partial x_i}-\mu_i=0 \quad\text{with}\quad
\begin{cases}
\mu_i\geq 0 \quad \forall\space i=2,\cdots,L \\
\mu_ix_i=0 \quad \forall\space i=2,\cdots,L
\end{cases}
$$
Corner solution:
$$
\mu_i\geq0,x_i=0
$$

$$
p_i=\frac{\partial g(x_2,\cdots,x_L)}{\partial x_i}+\mu_i>
\frac{\partial g(x_2,\cdots,x_L)}{\partial x_i}
$$
Interior solution:
$$
\mu_i=0
$$

$$
p_i=\frac{\partial g(x_2,\cdots,x_L)}{\partial x_i}
$$

### 1(b)

$$
p_i=\frac{\partial g(x_2,\cdots,x_L)}{\partial x_i}
\implies
x_i=x_i(p_i,x_2,\cdots,x_L)
$$

The demands for $l=2,\cdots,L$ depend on $p_2,\cdots,p_L$ that do not depend on $w$ 

Therefore, there is no wealth effect.



## 2

$$
\textbf{WARP:} \quad
p\cdot x(p',w')\leq w\space\and\space x(p',w')\neq x(p,w)\Longrightarrow
p'\cdot x(p,w)>w'
$$

### 2(a)

* $p\cdot x(p',w')\leq w$ means that the choice under $(p',w')$ is affordable under $(p,w)$ 
* $x(p',w')\neq x(p,w)$ means that choices are different under $(p,w)$ and $(p',w')$ 
* $p'\cdot x(p,w)>w'$ means that the choice under $(p,w)$ cannot be affordable under $(p',w')$ 

$x(p,w)$ is preferred to $x(p',w')$ . Whenever we choose $x(p',w')$ , $x(p,w)$ must not be available.



### 2(b)

If $x(p,w)$ is from a UMP, WARP must hold.

Prove by contraction: $x(p,w)$ is from a UMP but WARP does not hold.

Main idea
$$
\begin{cases}
p\cdot x(p',w')\leq w \\
x(p,w)\neq x(p',w')
\end{cases}
\implies p'\cdot x(p,w)\leq w' \quad
\text{WARP violation}
$$

$$
\begin{gather}
p\cdot x(p,w)\leq w \\
\Downarrow \\
x(p,w)\text{ and }x(p',w')\text{ are affordable under }p,w \\
\Downarrow \\
u(x(p,w))>u(x(p',w'))
\end{gather}
$$

$$
\begin{gather}
p'\cdot x(p',w')\leq w' \\
\Downarrow \\
x(p,w)\text{ and }x(p',w')\text{ are affordable under }p,w \\
\Downarrow \\
u(x(p',w'))>u(x(p,w))
\end{gather}
$$

$$
(\lnot\text{WARP}\implies\lnot\text{UMP}) \iff
(\text{UMP}\implies\text{WARP})
$$

## 3

### 3(a)

$$
\begin{gather}
u_1(x_1,x_2)=\min\{x_1,2x_2\} \\
x_2=\frac{1}{2}x_1 \\
x_1,x_2\text{ are perfect complement}
\end{gather}
$$

$$
\begin{gather}
u_2(x_1,x_2)=\min\{\sqrt{x_1},x_2\} \\
x_2=\sqrt{x_1} \\
x_1,x_2\text{ are perfect complement}
\end{gather}
$$

### 3(b)

$$
\begin{align}
u_1(\lambda x_1,\lambda x_2)&=\min\{\lambda x_1,\lambda 2x_2\} \\
&=\lambda\min\{x_1,2x_2\} \\
&=\lambda u_1(x_1,x_2) \quad \forall
\space x_1,x_2 \quad \forall\space\lambda >0 \\
\end{align}
$$

$u_1$ is homogeneous of degree 1

Preferences are homothetic

**Homotheticity**
$$
\begin{align}
\forall\space x,y, x\sim y &\implies \lambda x\sim\lambda y\space\forall \lambda>0\\
u(x)=u(y)&\implies u(\lambda x)=u(\lambda y)
\end{align}
$$

$$
\begin{gather}
x=(1,1)\\
u_2(1,1)=\min\{\sqrt{1},1\}=1 \\
y=(2,1)\\
u_2(2,1)=\min\{\sqrt{2},1\}=1 \\
\therefore x\sim y
\end{gather}
$$

$$
\begin{gather}
\lambda = 2 \\
\lambda x=(2,2) \\
u_2(2,2)=\min\{\sqrt{2},2\}=\sqrt{2} \\
\lambda y=(4,2) \\
u_2(4,2)=\min\{\sqrt{4},2\}=2 \\
\therefore \lambda x\nsim\lambda y
\end{gather}
$$

$u_2$ does not represent homothetic preferences



### 3(c)

Utility Maximization Problem
$$
\begin{align}
\max_{x_1,x_2} \quad & \min\{x_1,2x_2\} \\
\textrm{s.t.} \quad & p_1x_1+p_2x_2\leq w
\end{align}
$$

* $u$ represents monotone preferences $\implies$ Walra's Law holds $\implies p_1x_1+p_2x_2=w$ 
* Consumer consumes in a fixed ratio: $x_2=\frac{1}{2}x_1$ 

$$
\begin{cases}
x_1=2x_2 \\
p_1x_1+p_2x_2=w 
\end{cases}\implies
\begin{cases}
x_1=\frac{2w}{2p_1+p_2} \\
x_2=\frac{w}{2p_1+p_2}
\end{cases}
$$

