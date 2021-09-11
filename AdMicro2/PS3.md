# Problem Set 3

## 1. (Walrasian Demand Function)

### 1(a)

$$
\begin{align}
p \cdot x &=w \\
p \cdot x(p,w) &= w\\
x(p,w) &= (p^{-1}\cdot w)^T \\
x(p,w) &= w\cdot (p^{-1})^T
\end{align}
$$

$$
x(p,w)=
\begin{pmatrix}
x_1(p,w) \\
x_2(p,w) \\
\vdots \\
x_L(p,w)
\end{pmatrix}
$$

$$
D_wx(p,w)=\nabla_wx(p,w)=p^{-1}
$$

$$
p \cdot D_wx(p,w)=p \cdot p^{-1}=1
$$


$$
D_wx(p,w)=\frac{\partial x(p,w)}{\partial w}
$$


**Walras' Law** : 
$$
p \cdot x(p,w)=w
$$
**Differentiate both sides with respect to $w$** :
$$
p \cdot D_wx(p,w)=1
$$




### 2(b)

$$
\begin{gather}
\text{At least one good must be a normal good} \\
\Downarrow \\
\text{} \quad \exists \space l: \frac{\partial x_l(p,w)}{\partial w}\geq 0 \\
\\
\text{negation:} \quad \forall \space l: \frac{\partial x_l(p,w)}{\partial w}<0 \\
\end{gather}
$$

$$
\lnot \space \exists \space l: \frac{\partial x_l(p,w)}{\partial w}\geq 0
\equiv 
\forall \space l: \frac{\partial x_l(p,w)}{\partial w}<0
$$



Assume that there is no such good  $\forall \space l: \frac{\partial x_l(p,w)}{\partial w}<0$ . 
$$
\begin{align}
p \cdot D_wx(p,w)&=
\underbrace{\sum_{l=1}^{L}p_l}_\text{nonnegative}\cdot 
\underbrace{\frac{\partial x_l(p,w)}{\partial w}}_\text{negative} \leq 0\\
\end{align}
$$
In **2(a)** , we derived $p \cdot D_wx(p,w)=1$ . We have a contradiction.

Therefore, there must be at least one normal good.



## 2. (UMP and strictly convex preferences)

$$
\begin{gather}
\succeq \text{ are strictly convex} \\
\Updownarrow \\
u(\cdot) \text{ is strictly quasi-concave} \\
\Downarrow \\
x(p,w) \text{ is single-valued}
\end{gather}
$$

Prove by contradiction

Assume $\exists \space p,w: x_1, x_2 \in x(p,w), x_1 \neq x_2 \text{ but } u(x_1)=u(x_2)$
$$
u(\lambda x_1 +(1-\lambda) x_2)>\min \{u(x_1), u(x_2)\} \quad \text{(by strict quasi-concavity)}
$$
Check if $\lambda x_1 +(1-\lambda) x_2$ is affordable under $p,w$ 
$$
p\cdot [\lambda x_1 +(1-\lambda) x_2]=\lambda \underbrace{p \cdot x_1}_{\leq w} + 
(1-\lambda)\cdot \underbrace{p \cdot x_2}_{\leq w} \leq w
$$


I can always find a linear combination of $x_1$ and $x_2$ within the budget constraint such that this linear combination yields a higher utility.

Therefore, $x_1, x_2$ could never have been optimal (contradiction).
$$
\forall \space p,w: x(p,w) \text{ is single-valued}
$$




## 3. (Kuhn-Tucker)

**Constant Elasticity of Substitution (CES)**
$$
u(x)=\left(\sum_{l=1}^{L}x_l^{\sigma}\right)^{\frac{1}{\sigma}}
$$


### 3(a)

Convexity
$$
\frac{\partial u(x)}{\partial x_l}=\frac{1}{\sigma}\left(\sum_{l=1}^{L}x_l^{\sigma}\right)^{\frac{1}{\sigma}-1}\sigma \cdot x_l^{\sigma-1}=
\left(\sum_{l=1}^{L}x_l^{\sigma}\right)^{\frac{1}{\sigma}-1}x_l^{\sigma-1}
$$

$$
\frac{\partial^2 u(x)}{\partial x_l^2}=
(\frac{1}{\sigma}-1)\left(\sum_{l=1}^{L}x_l^{\sigma}\right)^{\frac{1}{\sigma}-2}
(\sigma-1)x_l^{\sigma-2}=
-\frac{(1-\sigma)^2}{\sigma}
\left(\sum_{l=1}^{L}x_l^{\sigma}\right)^{\frac{1}{\sigma}-2}
x_l^{\sigma-2} < 0
$$

Homotheticity
$$
u(\lambda x)=\left(\sum_{l=1}^{L}(\lambda x_l)^{\sigma}\right)^{\frac{1}{\sigma}}=\left(\lambda^\sigma\sum_{l=1}^{L}x_l^{\sigma}\right)^{\frac{1}{\sigma}}=
\lambda \left(\sum_{l=1}^{L}x_l^{\sigma}\right)^{\frac{1}{\sigma}}=\lambda u(x)
$$

Solution:
$$
\text{strictly convex} \Longleftrightarrow \text{strictly quasiconcave} \\
$$
We need to show that $u(\cdot)$ is strictly quasiconcave.

Let us do a monotonic transformation
$$
\begin{gather}
f(x)=x^{\sigma} \\
v(x)=f(u(x))=(u(x))^{\sigma}=\sum_{l=1}^{L}x_l^{\sigma}
\end{gather}
$$
$v(x)$ represents the same preferences as $u(x)$ 

We therefore need to show that $v(\cdot)$ is strictly quasiconcave.
$$
\begin{gather}
x^{\sigma} \text{ is strictly concave } (\sigma \in (0,1)) \\
\Downarrow \\
\text{the sum of } x^{\sigma} \text{ is also strictly concave} \\
\Downarrow \\
v(x) \text{ is strictly concave} \\
\Downarrow \\
v(x) \text{ is strictly quasiconcave} \\
\Downarrow \\
u(x) \text{ is strictly quasiconcave} \\
\Downarrow \\
u(x) \text{ is strictly convex}
\end{gather}
$$



### 3(b)

$$
\begin{align}
\max\quad & u(x) \\ 
\textrm{s.t.} \quad & p \cdot x\leq w, x_l\geq 0 \quad \forall l=1,2,\cdots,L
\end{align}
$$


$$
L=\left(\sum_{l=1}^{L}x_l^{\sigma}\right)^{\frac{1}{\sigma}}-
\lambda (p\cdot x -w)+\eta_1 \cdot x_1 + \cdots \eta_L \cdot x_L
$$

FOC:
$$
\left(\sum_{l=1}^{L}x_l^{\sigma}\right)^{\frac{1}{\sigma}-1}x_l^{\sigma-1}
\leq \lambda p_l
$$

$$
x_l\left[\left(\sum_{l=1}^{L}x_l^{\sigma}\right)^{\frac{1}{\sigma}-1}x_l^{\sigma-1}
- \lambda p_l\right]=0
$$

$$
\lambda(p\cdot x -w)=0
$$

At the interior optimum: $x_l>0: \nabla u(x)=\lambda p$
$$
\left(\sum_{l=1}^{L}x_l^{\sigma}\right)^{\frac{1}{\sigma}-1}x_l^{\sigma-1}
= \lambda p_l
$$

$$
p \cdot x =w
$$

**Solution**
$$
\max \left(\sum_{l=1}^{L}x_l^{\sigma}\right)^{\frac{1}{\sigma}} \quad \text{s.t.} \quad p \cdot x \leq w
$$
Monotonic transformation:
$$
\begin{gather}
u(x)=\left(\sum_{l=1}^{L}x_l^{\sigma}\right)^{\frac{1}{\sigma}} \\
f(x)=\frac{x^{\sigma}}{\sigma} \\
v(x)=f(u(x))=\frac{\sum_{l=1}^{L}x_l^{\sigma}}{\sigma}=\sum_{l=1}^{L}\frac{x_l^{\sigma}}{\sigma}
\end{gather}
$$

$$
\begin{gather}
u(x) \text{ is strictly increasing in each argument} \\
\Downarrow \\
\text{Walras' Law holds} \quad p \cdot x =w
\end{gather}
$$

Lagrangian function:
$$
L(x, \lambda)=\sum_{l=1}^{L}\frac{x_l^{\sigma}}{\sigma}-\lambda (\sum_{l=1}^{L}p_l\cdot x_l-w)
$$
FOC:
$$
\begin{cases}
\dfrac{\partial L}{\partial x_i}=x_i^{\sigma-1}-\lambda p_i=0 \\
\dfrac{\partial L}{\partial x_j}=x_j^{\sigma-1}-\lambda p_j=0
\end{cases}\implies
\begin{cases}
x_i^{\sigma-1}=\lambda p_i \\
x_j^{\sigma-1}=\lambda p_j
\end{cases}\implies
x_i = \left(\frac{p_i}{p_j}\right)^{\frac{1}{\sigma-1}}x_j
$$
Use budget constraint to pin down the demand function
$$
\begin{align}
p \cdot x &= w \\
\sum_{i=1}^{L}p_i\cdot x_i &=w \\
\sum_{i=1}^{L}p_i\cdot \left(\frac{p_i}{p_j}\right)^{\frac{1}{\sigma-1}}x_j &= w \\
\sum_{i=1}^{L}p_i^{\frac{\sigma}{\sigma-1}}\cdot \frac{x_j}{p_j^{\frac{1}{\sigma-1}}}&=w \\
\text{demand function:}\quad x_j&=\frac{w\cdot p_j^{\frac{1}{\sigma-1}}}{\sum_{i=1}^{L}p_i^{\frac{\sigma}{\sigma-1}}}
\end{align}
$$

As $\sigma\to 1$ 
$$
\lim_{\sigma \rightarrow 1}\left(\sum_{l=1}^{L}x_l^{\sigma}\right)^{\frac{1}{\sigma}}=
\sum_{l=1}^{L}x_l^{\sigma}
$$
As $\sigma \rightarrow 0$ , goods become perfect substitutes
$$
\begin{gather}
f(x)=\ln x \\
v(x)=f(u(x))=\ln \left(\sum_{l=1}^{L}x_l^{\sigma}\right)^{\frac{1}{\sigma}}=
\frac{1}{\sigma}\ln \left(\sum_{l=1}^{L}x_l^{\sigma}\right)
\end{gather}
$$

$$
\begin{align}
\lim_{\sigma \rightarrow 0}v(x)&=\lim_{\sigma \rightarrow 0} \frac{1}{\sigma}\ln \left(\sum_{l=1}^{L}x_l^{\sigma}\right) \\
&=\lim_{\sigma\to 0}\frac{\sum_{l=1}^{L}x_l^{\sigma}\ln x_l}{\sum_{l=1}^{L}x_l^{\sigma}} \\
&=\frac{1}{L}\sum_{l=1}^{L}\ln x_l
\end{align}
$$

$$
\lim_{\sigma \rightarrow - \infty}u(x)=\underset{x}\min \{x_i\} \quad \text{(leontief utility function)}
$$


### 3(c)

$$
u(x_1,x_2)=(x_1^{\sigma}+x_2^{\sigma})^{1/\sigma} \quad x_1,x_2 \geq 0
$$

The Kuhn-Tucker conditions:
$$
\begin{cases}
(x_1^{\sigma}+x_2^{\sigma})^{\frac{1}{\sigma}-1}x_1^{\sigma-1}\leq \lambda p_1 \\
(x_1^{\sigma}+x_2^{\sigma})^{\frac{1}{\sigma}-1}x_2^{\sigma-1}\leq \lambda p_2 \\
x_1[(x_1^{\sigma}+x_2^{\sigma})^{\frac{1}{\sigma}-1}x_1^{\sigma-1}-\lambda p_1]=0 \\
x_2[(x_1^{\sigma}+x_2^{\sigma})^{\frac{1}{\sigma}-1}x_2^{\sigma-1}-\lambda p_2]=0\\
\lambda (p_1x_1+p_2x_2-w)=0
\end{cases}
$$
$x_1,x_2>0$:
$$
\begin{cases}
(x_1^{\sigma}+x_2^{\sigma})^{\frac{1}{\sigma}-1}x_1^{\sigma-1}-\lambda p_1=0\\
(x_1^{\sigma}+x_2^{\sigma})^{\frac{1}{\sigma}-1}x_2^{\sigma-1}-\lambda p_2=0
\end{cases}\implies
\frac{\lambda p_1}{x_1^{\sigma-1}}=\frac{\lambda p_2}{x_2^{\sigma-1}}
$$

**Solution**
$$
\begin{gather}
x_j=\frac{w\cdot p_j^{\frac{1}{\sigma-1}}}{\sum_{i=1}^{L}p_i^{\frac{\sigma}{\sigma-1}}} \\
x_1=\frac{w\cdot p_1^{\frac{1}{\sigma-1}}}{p_1^{\frac{\sigma}{\sigma-1}}+p_2^{\frac{\sigma}{\sigma-1}}} \\
\frac{\partial x_1(p,w)}{p_2}=(-1)\cdot w\cdot p_1^{\frac{1}{\sigma-1}}\cdot
\frac{1}{(p_1^{\frac{\sigma}{\sigma-1}}+p_2^{\frac{\sigma}{\sigma-1}})^2}\cdot 
\frac{\sigma}{\sigma-1}\cdot p_2 ^{\frac{\sigma}{\sigma-1}-1}>0
\end{gather}
$$
$x_1, x_2$ are gross substitutes.

### 3(d)

$x_1(p,w), x_2(p,w)$ are linear in $w$
$$
\frac{x_1(p,w)}{x_2(p,w)} \text{ does not depend on } w
$$




## 4. (Multiple Optima)

### 4(a)

$$
u(x)=
\begin{cases}
x, & x \in [0,1) \\
1, & x \geq 1
\end{cases}
$$

Continuity
$$
\begin{cases}
f(x)=x \text{ is continuous } \\
f(x)=1 \text{ is continuous } 
\end{cases}
$$

$$
\begin{cases}
\lim\limits_{x\rightarrow1-}u(x)=\lim\limits_{x\rightarrow1-}x=1 \\
\lim\limits_{x\rightarrow1+}u(x)=\lim\limits_{x\rightarrow1+}1=1 \\
\end{cases}
\implies \lim\limits_{x\rightarrow1}u(x)=1 \quad u(x) \text{ is continuous at } x=1
$$
Convexity (Quasiconcavity)
$$
\begin{gather}
f(x)=x \text{ is convex} \\
f(x)=1 \text{ is convex}
\end{gather}
$$
Check $y<1<x$
$$
u(\lambda x + (1-\lambda)y)\geq u(\lambda y + (1-\lambda)y)=u(y) \implies \text{quasicavity} \implies \text{convex}
$$
LNS
$$
x>1, \nexists \space \varepsilon >0, x'\in[x-\varepsilon,x+\varepsilon] \text{ such that } u(x') > u(x)=1
$$
$\succeq$  is not locally non-satiated.

### 4(b)

$$
\max u(x) \quad \text{s.t.} \quad p \cdot x \leq w \implies
x(p,w)=
\begin{cases}
\dfrac{w}{p}, & \dfrac{w}{p}<1 \\
[1, \dfrac{w}{p}], & \dfrac{w}{p}\geq1
\end{cases}
$$

Zero-homothetic
$$
x(p,w)=
\begin{cases}
\dfrac{\lambda w}{\lambda p}, & \dfrac{\lambda w}{\lambda p}<1 \\
[1, \dfrac{\lambda w}{\lambda p}], & \dfrac{\lambda w}{\lambda p}\geq1
\end{cases}
$$






## 5. (Homothetic Preferences)

### 5(a)

$$
x_1p_1+x_2p_2=w 
$$

$$
MRS(x_1,x_2)=\frac{p_1}{p_2}
$$

$$
MRS(x_1,x_2)=MRS(\lambda x_1, \lambda x_2)
$$



### 5(b)

Prove
$$
x(p,\lambda w)=\lambda x(p,w)
$$
Prove by contradiction

Assume $x\neq \lambda x'$  and $x \succ \lambda x^*$ , $x^*$ is optimal
$$
x \succ \lambda x^* \implies u(x)>u(\lambda x^*)
$$

$$
\begin{align}
u(x)&>\lambda u(x^*) \\
\frac{1}{\lambda}u(x)&>u(x^*) \\
u(\frac{x}{\lambda}) &> u(x^*) \\
\frac{x}{\lambda} &\succeq x^* \\
\end{align}
$$
$$
p\cdot \frac{x}{\lambda}=p \cdot \lambda x^* \cdot \frac{1}{\lambda}=w \quad 
\frac{x^*}{\lambda}\text{ is feasible under } p,w
$$

We find a bundle $\dfrac{x^*}{\lambda}$ that yields higher utility within the budget constraint. Therefore, $x^*$ could not have been optimal.

