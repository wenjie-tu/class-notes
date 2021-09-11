# Mock Exam

## Question 1

### 1(a)

$$
\text{budegt set:}\quad p_1q_1+p_2q_2\leq w
\iff q_1+q_2\leq w
$$

### 1(b)

**Utility maximization:**
$$
\begin{align}
\max_{q_1,q_2}\quad & U=\int u(q_1+q_2z_2)f(z_2)dz_2 \\
\textrm{s.t.}\quad & p_1q_1+p_2q_2\leq w
\end{align}
$$

$$
\text{DM always wants to use all his wealth to acquire assets}\implies p_1q_1+p_2q_2=w
\implies q_1=\frac{1}{p_1}(w-p_2q_2)
$$

$$
\mathcal{L}=\int u(q_1+q_2z_2)f(z_2)dz_2-\lambda(p_1q_1+p_2q_2-w)
$$

FOC:
$$
\begin{cases}
\dfrac{\part\mathcal{L}}{\part q_1}=\displaystyle\int u'(q_1+q_2z_2)f(z_2)dz_2-\lambda p_1=0 \\
\dfrac{\part\mathcal{L}}{\part q_2}=\displaystyle\int u'(q_1+q_2z_2)z_2f(z_2)dz_2-\lambda p_2=0
\end{cases}
$$
Assume $q_2=0$:
$$
\begin{cases}
u'(q_1)\displaystyle\int f(z_2)dz_2=\lambda p_1 \\
u'(q_1)\displaystyle\int z_2f(z_2)dz_2=\lambda p_2
\end{cases}\implies
\frac{p_1}{p_2}=\frac{\int f(z_2)dz_2}{\int z_2f(z_2)dz_2}=1
$$
Zero demand for asset 2 always leads to $p_1=p_2$. Whenever $p_1>p_2$, the DM has a strictly positive demand for asset 2 since $q_2$ cannot be negative.




## Question 2

### 2(a)

* Consumer $i=1$ has a strictly **<u>increasing</u>** and strictly **<u>concave</u>** Bernoulli utility function, which means the marginal utility for consumer 1 is decreasing. Therefore, consumer $i=1$ is risk-averse.
* Consumer $i=2$ has a linear Bernoulli utility function $u_2(z)=z$ , which means the marginal utility for consumer 2 is constant. Therefore, consumer $i=2$  is risk-neural.

### 2(b)

**Consumer $i=1$ :**
$$
\begin{align}
\max_{
x_{01},x_{11} \\
z_{11},z_{21}
}
\quad & \pi u_1(x_{01})+(1-\pi)u_1(x_{11}) \\
\textrm{s.t.}\quad &
\begin{cases}
\text{asset market:} & z_{11}+z_{21}q=0 \\
\text{state $s=0$:} & x_{01}=1+z_{11}+z_{21} \\
\text{state $s=1$:} & x_{11}=z_{21}
\end{cases}
\end{align}
$$

$$
\mathcal{L}=\pi u_1(x_{01})+(1-\pi)u_1(x_{11})-
\lambda(z_{11}+z_{21}q)-
\mu(x_{01}-1-z_{11}-z_{21})-\nu(x_{11}-z_{21})
$$

FOCs:
$$
\begin{cases}
\dfrac{\partial\mathcal{L}}{\partial x_{01}}=\pi u_1'(x_{01})-\mu=0 \\
\dfrac{\partial\mathcal{L}}{\partial x_{11}}=(1-\pi)u_1'(x_{11})-\nu=0
\end{cases}\implies
\frac{\pi}{1-\pi}\cdot\frac{u_1'(x_{01})}{u_1'(x_{11})}=\frac{\mu}{\nu}
$$

$$
\begin{cases}
\dfrac{\partial{\mathcal{L}}}{\partial z_{11}}=-\lambda+\mu=0 \\
\dfrac{\partial{\mathcal{L}}}{\partial z_{21}}=-\lambda q+\mu+\nu=0
\end{cases}\implies
\frac{1}{q-1}=\frac{\mu}{\nu}
$$

$$
\frac{\pi}{1-\pi}\cdot\frac{u_1'(x_{01})}{u_1'(x_{11})}=\frac{1}{q-1}
$$

**Consumer $i=2$ :**
$$
\begin{align}
\max_{
x_{02},x_{12} \\
z_{12},z_{22}
}
\quad & \pi x_{02}+(1-\pi)x_{12} \\
\textrm{s.t.}\quad &
\begin{cases}
\text{asset market:} & z_{12}+z_{22}q=0 \\
\text{state $s=0$:} & x_{02}=z_{12}+z_{22} \\
\text{state $s=1$:} & x_{12}=1+z_{22}
\end{cases}
\end{align}
$$

$$
\mathcal{L}=\pi x_{02}+(1-\pi)x_{12}-\lambda(z_{12}+z_{22}q)-
\mu(x_{02}-z_{12}-z_{22})-\nu(x_{12}-1-z_{22})
$$

FOC:
$$
\begin{cases}
\dfrac{\partial\mathcal{L}}{\partial x_{02}}=\pi -\mu=0 \\
\dfrac{\partial\mathcal{L}}{\partial x_{12}}=1-\pi-\nu=0
\end{cases}\implies
\frac{\pi}{1-\pi}=\frac{\mu}{\nu}
$$

$$
\begin{cases}
\dfrac{\partial{\mathcal{L}}}{\partial z_{12}}=-\lambda+\mu=0 \\
\dfrac{\partial{\mathcal{L}}}{\partial z_{22}}=-\lambda q+\mu+\nu=0
\end{cases}\implies
\frac{1}{q-1}=\frac{\mu}{\nu}
$$

$$
\frac{\pi}{1-\pi}=\frac{1}{q-1}
$$

**Market clearing:**
$$
\begin{cases}
\dfrac{\pi}{1-\pi}\cdot\dfrac{u_1'(x_{01})}{u_1'(x_{11})}=\dfrac{1}{q-1} \\
\dfrac{\pi}{1-\pi}=\dfrac{1}{q-1}
\end{cases}
\implies
\begin{cases}
x_{01}=x_{11} \\
q=\dfrac{1}{\pi}
\end{cases}
$$

$$
\begin{cases}
x_{01}+x_{02}=\omega_{01}+\omega_{02}=1 \\
x_{11}+x_{12}=\omega_{11}+\omega_{12}=1
\end{cases}\implies
\begin{cases}
x_{02}=1-x_{01} \\
x_{12}=1-x_{11}
\end{cases}
$$

For consumer $i=1$ , plug $x_{01}=x_{11}$ back into budget constraint:
$$
\begin{cases}
z_{11}+z_{21}q=0 \\
x_{01}=1+z_{11}+z_{21} \\
x_{11}=z_{21} \\
x_{01}=x_{11} \\
q=\dfrac{1}{\pi}
\end{cases}\implies
\begin{cases}
x_{01}^*=\pi	\\
x_{11}^*=\pi
\end{cases}\implies
\begin{cases}
x_{02}^*=1-\pi	\\
x_{12}^*=1-\pi
\end{cases}
$$

$$
\textbf{Radner equilibrium:}\quad (x_{01}^*,x_{11}^*,x_{02}^*,x_{12}^*;q)=(\pi,\pi,1-\pi,1-\pi,\frac{1}{\pi})
$$

### 2(c)

In equilibrium, we have $x_{01}=x_{11}$ and $x_{02}=x_{12}$. Hence, the asset market, jointly with the state-wise spot market, yields a **(Pareto) efficient allocation of risk**, by making the ex-ante risk tradable.
$$
\dfrac{u_1'(x_{01})}{u_1'(x_{11})}
$$
In any PO, the uncertainty completely vanishes (perfect consumption smoothing). In particular, both consumers perfectly insure each other against the uncertainty (efficient allocation of risk).



## Question 3

### 3(a)

$$
\begin{align}
& \because \quad x_2<2 \\
& \therefore \quad \frac{\partial U}{\partial x_1}=(2-x_2)^{-2}>0
\end{align}
$$

$$
\begin{align}
& \because \quad \text{$x_1>1$ and $x_2<2$} \\
& \therefore \quad \frac{\partial U}{\partial x_2}=2(x_1-1)(2-x_2)^{-3}>0
\end{align}
$$

Therefore, $U(x_1,x_2)$ is monotonically increasing in $x_1$ and $x_2$ .

We know that:
$$
\text{strong monotonicity}\implies\text{local non-satiation}
$$
Therefore, preferences represented by $U(x_1,x_2)$ verify local non-satiation on $X$ .

### 3(b)

**Utility maximization:**
$$
\begin{align}
\max_{x_1,x_2}\quad & (x_1-1)(2-x_2)^{-2} \\
\textrm{s.t.}\quad & 
\begin{cases}
p_1x_1+p_2x_2\leq 1 \\
x_1>1 \\
0<x_2<2
\end{cases}

\end{align}
$$
**Log-utility transformation:**
$$
\begin{align}
\max_{x_1,x_2}\quad & \log(x_1-1)-2\log(2-x_2) \\
\textrm{s.t.}\quad & 
\begin{cases}
p_1x_1+p_2x_2\leq 1 \\
x_1>1 \\
0<x_2<2
\end{cases}

\end{align}
$$
**Lagrange:**
$$
\mathcal{L}=\log(x_1-1)-2\log(2-x_2)-\lambda(p_1x_1+p_2x_2-1)
$$
**FOC:**
$$
\begin{cases}
\dfrac{\part\mathcal{L}}{\part x_1}=\dfrac{1}{x_1-1}-\lambda p_1=0 \\
\dfrac{\part\mathcal{L}}{\part x_2}=\dfrac{2}{2-x_2}-\lambda p_2=0
\end{cases}\implies
\dfrac{2-x_2}{2(x_1-1)}=\frac{p_1}{p_2}
$$

$$
(2-x_2)^{-2}-\lambda p_1=0\implies\lambda>0\implies \text{Walra's Law holds}\implies p_1x_1+p_2x_2= 1
$$

$$
\begin{cases}
\text{FOC:} & 2p_1x_1+p_2x_2=2(p_1+p_2) \\
\text{BC:} & p_1x_1+p_2x_2= 1
\end{cases}\implies
\begin{cases}
x_1=\dfrac{2(p_1+p_2)-1}{p_1} \\
x_2=\dfrac{2(1-p_1-p_2)}{p_2}
\end{cases}
$$

### 3(c)

$$
\begin{cases}
x_1>1 \\
0<x_2<2
\end{cases}\implies
\begin{cases}
\dfrac{2(p_1+p_2)-1}{p_1}>1 \\
0<\dfrac{2(1-p_1-p_2)}{p_2}<2
\end{cases}\implies
\begin{cases}
p_1+2p_2>1 \\
p_1+p_2>1
\end{cases}
$$

### 3(d)

$$
\frac{\partial x_1(p_1,p_2)}{\partial p_1}=\frac{1-2p_2}{p_1^2}\quad
\text{the sign is ambiguous under the set of prices $(p_1,p_2)$}
$$

$$
\frac{\partial x_2(p_1,p_2)}{\partial p_2}=\frac{2(p_1-1)}{p_2^2}\quad
\text{the sign is ambiguous under the set of prices $(p_1,p_2)$}
$$

The Law of Demand is not satisfied for all prices.



## Question 4

### 4(a)

$$
p_1x_1+p_2x_2\leq w
$$

If both prices are not strictly positive in Walrasian equilibrium, the consumer can consume infinite quantity of corresponding goods.

$p_1\leq0$ or $p_2\leq0$ cannot be supported as a price in a Walrasian equilibrium because the product market would not clear.

### 4(b)

The consumer's utility function is independent of labor. As long as the wage is non-negative, the consumer would supply all her labor to to produce more consumption goods, which leads to a higher utility.

If this consumer would not supply all her labor to the market, the total wealth would reduce. This is not Pareto optimal. Consumer can simply supply all her labor and become better off without losing anything. By the FWT, any WE must belong to the Pareto set. Therefore, consumer must supply all her labor to the market in any WE.

### 4(c)

**Consumer's problem (utility maximization):**
$$
\begin{align}
\max_{x_1,x_2}\quad & x_1x_2 \\
\textrm{s.t.}\quad &
\begin{cases}
x_1\leq q_1 \\
x_2\leq q_2 \\
L_1+L_2\leq 1
\end{cases}
\end{align}
$$
Log-utility transformation:
$$
\begin{align}
\max_{L_1,L_2}\quad & \ln(2\sqrt{L_1})+\ln(\sqrt{L_2}) \\
\textrm{s.t.}\quad & L_1+L_2=1
\end{align}
$$

$$
\mathcal{L}=\ln2+\frac{1}{2}\ln(L_1)+\frac{1}{2}\ln(L_2)-\lambda(L_1+L_2-1)
$$

FOC:
$$
\begin{cases}
\dfrac{\part\mathcal{L}}{\part L_1}=\dfrac{1}{2L_1}-\lambda=0 \\
\dfrac{\part\mathcal{L}}{\part L_2}=\dfrac{1}{2L_2}-\lambda=0
\end{cases}\implies
L_1=L_2
$$

$$
\begin{cases}
L_1=L_2 \\
L_1+L_2=1
\end{cases}\implies
\begin{cases}
L_1=\dfrac{1}{2} \\
L_2=\dfrac{1}{2}
\end{cases}
$$

$$
\begin{cases}
x_1=q_1=2\sqrt{L_1}=\sqrt{2} \\
x_2=q_2=\sqrt{L_2}=\dfrac{\sqrt{2}}{2}
\end{cases}
$$

**Firm's problem (profit maximization):**
$$
\begin{align}
\max_{q_1,q_2}\quad & p_1q_1+p_2q_2-L_1-L_2 
\end{align}
$$

$$
\begin{align}
\max_{L_1,L_2}\quad & 2p_1\sqrt{L_1}+p_2\sqrt{L_2}-L_1-L_2
\end{align}
$$

FOC:
$$
\begin{cases}
(L_1): & \dfrac{p_1}{\sqrt{L_1}}-1=0 \\
(L_2): & \dfrac{p_2}{2\sqrt{L_2}}-1=0
\end{cases}\implies
\begin{cases}
p_1=\sqrt{L_1}=\dfrac{\sqrt{2}}{2} \\
p_2=2\sqrt{L_2}=\sqrt{2}
\end{cases}
$$

$$
\textbf{Walrasian equilibrium allocation:}\quad
(x_1^*,x_2^*,L_1^*,L_2^*)=\left(\sqrt{2},\frac{\sqrt{2}}{2},\frac{1}{2},\frac{1}{2} \right)
$$

### 4(d)

$\begin{cases}q_1=2\sqrt{L_1} \\q_2=\sqrt{L_2} \end{cases}$ means that using the same amount of labor produces more consumption goods 1 than  2. Therefore, it is more rewarding in terms of utility to produce more consumptions 1, $q_1>q_2$ . In order to ensure good 1 to be consumed, $p_1$ must decrease.