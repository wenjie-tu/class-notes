# Problem Set 9

## 1. Profit Maximization

$q\in\mathbb{R}_+$ denotes the quantity produced (output)

$f(x)$ is a production function, where $x\in\mathbb{R}_+^{L-1}$ are inputs

The production possibility set
$$
Y=\{(q,x)\in\mathbb{R}_+\times\mathbb{R}_+^{L-1}:q\leq f(x) \}
$$
where $f:\mathbb{R}_+^{L-1}\rightarrow\mathbb{R}_+$ is a strictly concave $C^2$-function

### 1(b)

<u>Notation</u>

* price of $q$ is $p_1$ 
* input price $w=(p_2,\cdots,p_L)$

The profit-maximization problem (PMP)
$$
\begin{align}
\max_{x,q}\quad & p_1\cdot q-w\cdot x \\
\textrm{s.t.}\quad & q\leq f(x) \\
&-x_l\leq 0\quad\forall l=2,\cdots,L \\
&-q\leq0
\end{align}
$$
We argue by contradiction that $q=f(x)$ at any optimum

Suppose $(q',x')$ solves PMP and $q'<f(x')$ 

Define $q^*=f(x')$ such that $(q^*,x')$ is also a feasible production plan

By optimality of $(q',x')$, we have 
$$
\begin{align}
p_1q'-wx'&\geq p_1q^*-wx' \\
q'&\geq q^*
\end{align}
$$
 However,
$$
q'<f(x')\implies q'<q^*\quad\text{contradiction}
$$

## 1(c)

Define FOC
$$
q=f(x)\quad\text{at any optimum}
$$
We can write the Lagrangian as
$$
\mathcal{L}=p_1\cdot f(x)-w\cdot x+\sum_{l=1}^L\mu_lx_l\quad \mu_l\text{ is the Lagrangian multipliers}
$$
By Kuhn-Tucker, the FOCs are
$$
\begin{align}
p_1\frac{\partial f(x)}{\partial x_l}-p_l+\mu_l&=0\quad\forall l=2,\cdots,L \\
p_1\frac{\partial f(x)}{\partial x_l}&=p_l-\mu_l
\end{align}
$$
In vector notation
$$
p_1\nabla f(x)=w-\mu \quad\text{complementary slackness condition } \mu_lx_l=0
$$
Hence, if the solution is interior, we have $\mu_l=0$ and FOC becomes $p_1\nabla f(x)=w$ 

### 1(d)

$$
\begin{cases}
L=2 \\
f(x)=\sqrt{x}
\end{cases}
$$

$$
\begin{align}
p_1\nabla f(x)&=w \\
p_1\times\frac{1}{2}\times\frac{1}{\sqrt{x}}&=w \\
\sqrt{x}&=\frac{p_1}{2w}
\end{align}
$$

We know that
$$
f(x)=\sqrt{x}=q
\implies 
\begin{cases}
x=\dfrac{p_1^2}{4w^2} \\
q=\dfrac{p_1}{2w}
\end{cases}
$$

$$
(x^*,q^*)=\left(\frac{p_1^2}{4w^2}, \frac{p_1}{2w} \right)
$$

*iso-profit line* of $\Pi^*$ (profit of optimal plan $(x^*,q^*)$ is tangent to $Y$)



## 2. Exchange Economy

$$
\begin{cases}
u^1(x_{11},x_{21})=x_{11}^{\alpha}x_{21}^{1-\alpha} & \alpha\in(0,1) \\
u^2(x_{12},x_{22})=x_{12}^{\beta}x_{22}^{1-\beta} & \beta\in(0,1)
\end{cases}
$$

### 2(a)

Take income for consumer 1 $(w_1>0)$ as exogenously given
$$
\begin{align}
\max_{x_{1},x_{2}}\quad & \alpha\ln(x_{1})+(1-\alpha)\ln(x_{2}) \\
\textrm{s.t.}\quad & 
p_1x_{1}+p_2x_{2}\leq w_1
\end{align}
$$

$$
\mathcal{L}=\alpha\ln(x_{1})+(1-\alpha)\ln(x_{2})-\lambda(p_1x_{1}+p_2x_{2}-w_1)
$$

FOC:
$$
\begin{cases}
\dfrac{\part\mathcal{L}}{\part x_{1}}=\dfrac{\alpha}{x_{1}}-\lambda p_1=0 \\
\dfrac{\part\mathcal{L}}{\part x_{2}}=\dfrac{1-\alpha}{x_{2}}-\lambda p_2=0 \\
\dfrac{\part\mathcal{L}}{\part\lambda}=p_1x_{1}+p_2x_{2}-w_1=0
\end{cases}\implies
\begin{cases}
\dfrac{p_1}{p_2}=\dfrac{\alpha}{1-\alpha}\cdot\dfrac{x_{2}}{x_{1}} \\
p_1x_{1}+p_2x_{2}=w_1
\end{cases}\implies
\begin{cases}
x_{1}=\dfrac{\alpha}{p_1}w_1 \\
x_{2}=\dfrac{1-\alpha}{p_2}w_1
\end{cases}
$$
$x_1(p,w_1)$ is independent of $p_2$

### 2(b)

Endogenous income for consumer 1
$$
w_1=p_1\omega_{11}+p_2\omega_{21}\implies
\begin{cases}
x_1=\dfrac{\alpha}{p_1}w_1=\dfrac{\alpha}{p_1}(p_1\omega_{11}+p_2\omega_{21}) \\
x_2=\dfrac{1-\alpha}{p_2}w_1=\dfrac{1-\alpha}{p_2}(p_1\omega_{11}+p_2\omega_{21})
\end{cases}
$$

$$
x_1=\frac{\alpha}{p_1}(p_1\omega_{11}+p_2\omega_{21})
$$

$x_1$ depends on positively on $p_2$ . Demand behaves as if goods are gross substitutes.

Reason: with endogenous income, a change in prices changes real income, which triggers additional income effects

$x_1$ increases in $p_2$ is driven by:

* $x_1$ is a normal good
* Income increases if $p_2$ increases

### 2(c)

$$
\text{endowments}=
\begin{cases}
(\omega_{11},\omega_{21})=(1,0) \\
(\omega_{12},\omega_{22})=(0,1) \\
\end{cases}
$$

$$
\text{price}=
\begin{cases}
p_1=1 \\
p_2=p
\end{cases}
$$

$$
\text{demand for consumer 1}=
\begin{cases}
x_{11}=\dfrac{\alpha}{p_1}(p_1\omega_{11}+p_2\omega_{21})=\alpha \\
x_{21}=\dfrac{1-\alpha}{p_2}(p_1\omega_{11}+p_2\omega_{21})=\dfrac{1-\alpha}{p}
\end{cases}
$$

$$
\text{demand for consumer 2}=
\begin{cases}
x_{12}=\dfrac{\beta}{p_1}(p_1\omega_{12}+p_2\omega_{22})=\beta\cdot p \\
x_{22}=\dfrac{1-\beta}{p_2}(p_1\omega_{12}+p_2\omega_{22})=1-\beta
\end{cases}
$$

**Market clearing**
$$
\begin{align}
x_{11}+x_{12}&=\omega_{11}+\omega_{12} \\
\alpha+\beta\cdot p&=1 \\
p&=\frac{1-\alpha}{\beta}
\end{align}
$$

$$
\textbf{Walrasian equilibrium}=
\begin{cases}
x_{11}=\alpha \\
x_{21}=\beta \\
x_{12}=1-\alpha \\
x_{22}=1-\beta
\end{cases}
$$



## 3. Exchange Economy

$$
\begin{cases}
u^1(x_{11},x_{21})=\min\{2x_{11},x_{21} \} & \text{consumer 1} \\
u^2(x_{12},x_{22})=\min\{x_{12},x_{22} \} & \text{consumer 2}
\end{cases}
$$

### 3(b)

$$
\begin{cases}
(\omega_{11},\omega_{21})=(1,0) \\
(\omega_{12},\omega_{22})=(0,1) \\
(p_1,p_2)=(0,1)
\end{cases}
$$

Equilibrium

Consumer 1 has income 0 and consumer 2 has income 1

Consumer 2 will consume $x_{22}=1$ and $x_{12}=1$ to have $\min\{x_{11},x_{22} \}=1$ 

Consumer 1 chooses $x_{21}=0$ and market clearing gives $x_{11}=0$ 
$$
\begin{cases}
(x_{11}^*,x_{21}^*)=(0,0) \\
(x_{12}^*,x_{22}^*)=(1,1)
\end{cases}
$$
