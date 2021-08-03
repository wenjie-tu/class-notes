# Problem Set 9

## **<u>Exercise 1:</u>** Intertemporal optimality  in the TnT model

$$
U(C_1,C_2)=u(C_1)+\beta u(C_2)
$$
with CRRA utility function
$$
\begin{gather}
u(C_t)=\frac{C_t^{1-\frac{1}{\sigma}}}{1-\frac{1}{\sigma}} \\
\sigma\text{ is a risk coefficient, constant intertemporal elasticity substitution}
\end{gather}
$$

$$
\begin{cases}
\theta & \text{intratemporal elasticity of substitution} \\
\theta\to\infty & \text{perfect substitution} \\
\theta\to0 & \text{perfect complement}
\end{cases}
$$

Consumption bundle is given by
$$
C_t=\left[\gamma^{\frac{1}{\theta}}(C_t^N)^{\frac{\theta-1}{\theta}}+
(1-\gamma)^{\frac{1}{\theta}}(C_t^T)^{\frac{\theta-1}{\theta}} \right]^{\frac{\theta}{\theta-1}}
$$
Budget constraints
$$
\begin{align}
C_1^T+\frac{P_1^N}{P_1^T}C_1^N&=Y_1^T+\frac{P_1^N}{P_1^T}Y_1^N+rB_0-CA_1 \\
C_2^T+\frac{P_2^N}{P_2^T}C_2^N&=Y_2^T+\frac{P_2^N}{P_2^T}Y_2^N+(1+r)(B_0+CA_1)
\end{align}
$$

### 1(a)

A price index $P_t$ exists such that 
$$
\underbrace{P_t}_\text{price index}\cdot \underbrace{C_t}_\text{consumption bundle}=
\underbrace{P_t^TC_t^T+P_t^NC_t^N}_\text{sum of nominal expenditure}
$$
Find $P_t$ that satisfies the equation and $P_t$ is defined as the minimal expenditure for the consumption of 1 unit of $C_t$ 
$$
\begin{align}
\min_{C_t}\quad & P_t^TC_t^T+P_t^NC_t^N \\
\textrm{s.t.}\quad & C_t=1\quad\text{and}\quad
C_t=\left[\gamma^{\frac{1}{\theta}}(C_t^N)^{\frac{\theta-1}{\theta}}+
(1-\gamma)^{\frac{1}{\theta}}(C_t^T)^{\frac{\theta-1}{\theta}} \right]^{\frac{\theta}{\theta-1}}
\end{align}
$$

$$
\mathcal{L}=P_t^TC_t^T+P_t^NC_t^N-\lambda(C_t-1)
$$

where the Lagrangian multiplier $\lambda$ is the shadow price of increasing $C$ by 1 unit. If $C$ increases by 1, budget increases by $\lambda$ .

i.e., I will be charged $\lambda$ to increase the consumption of $C$ because that is the amount up to which I am willing to pay. As such, $\lambda$ is the minimal expenditure for consumption of an additional unit of $C$ . Hence, $\lambda=P_t$ 
$$
\begin{align}
\mathcal{L}&=P_t^TC_t^T+P_t^NC_t^N-P_t(C_t-1) \\
&=P_t^TC_t^T+P_t^NC_t^N-P_t\left(\left[\gamma^{\frac{1}{\theta}}(C_t^N)^{\frac{\theta-1}{\theta}}+
(1-\gamma)^{\frac{1}{\theta}}(C_t^T)^{\frac{\theta-1}{\theta}} \right]^{\frac{\theta}{\theta-1}}-1
\right)
\end{align}
$$
FOC w.r.t $C_t^T$ :
$$
\begin{align}
\frac{\partial\mathcal{L}}{\partial C_t^T}&=P_t^T-P_t\left(
\frac{\theta}{\theta-1}\left[\gamma^{\frac{1}{\theta}}(C_t^N)^{\frac{\theta-1}{\theta}}+
(1-\gamma)^{\frac{1}{\theta}}(C_t^T)^{\frac{\theta-1}{\theta}} \right]^{\frac{1}{\theta-1}}
(1-\gamma)^{\frac{1}{\theta}}\frac{\theta-1}{\theta}(C_t^T)^{-\frac{1}{\theta}}
\right)=0
\end{align}
$$

$$
\begin{align}
\frac{P_t^T}{P_t}&=
\left[\gamma^{\frac{1}{\theta}}(C_t^N)^{\frac{\theta-1}{\theta}}+
(1-\gamma)^{\frac{1}{\theta}}(C_t^T)^{\frac{\theta-1}{\theta}} \right]^{\frac{1}{\theta-1}}
(1-\gamma)^{\frac{1}{\theta}}(C_t^T)^{-\frac{1}{\theta}} \\
\left(\frac{P_t^T}{P_t}\right)^\theta&=C_t(1-\gamma)(C_t^T)^{-1} \\
C_t^T&=(1-\gamma)\left(\frac{P_t^T}{P_t}\right)^{-\theta}C_t
\end{align}
$$

FOC w.r.t. $C_t^N$ :
$$
\begin{align}
\frac{\partial\mathcal{L}}{\partial C_t^N}&=P_t^N-P_t\left(
\frac{\theta}{\theta-1}\left[\gamma^{\frac{1}{\theta}}(C_t^N)^{\frac{\theta-1}{\theta}}+
(1-\gamma)^{\frac{1}{\theta}}(C_t^T)^{\frac{\theta-1}{\theta}} \right]^{\frac{1}{\theta-1}}
\gamma^{\frac{1}{\theta}}\frac{\theta-1}{\theta}(C_t^N)^{-\frac{1}{\theta}}
\right)=0
\end{align}
$$

$$
\begin{gather}
\left(\frac{P_t^N}{P_t}\right)^{\theta}=
\left[\gamma^{\frac{1}{\theta}}(C_t^N)^{\frac{\theta-1}{\theta}}+
(1-\gamma)^{\frac{1}{\theta}}(C_t^T)^{\frac{\theta-1}{\theta}} \right]^{\frac{\theta}{\theta-1}} 
\gamma(C_t^N)^{-1} \\
C_t^N=\gamma\left(\frac{P_t^N}{P_t}\right)^{-\theta}C_t
\end{gather}
$$

$$
\begin{cases}
C_t^T=\left(\dfrac{P_t^T}{P_t}\right)^{-\theta}(1-\gamma)C_t \\
C_t^N=\left(\dfrac{P_t^N}{P_t}\right)^{-\theta}\gamma C_t
\end{cases}
$$

$$
\begin{align}
P_tC_t&=P_t^TC_t^T+P_t^NC_t^N \\
P_t&=P_t^T\left(\dfrac{P_t^T}{P_t}\right)^{-\theta}(1-\gamma)+P_t^N\left(\dfrac{P_t^N}{P_t}\right)^{-\theta}\gamma \\
P_t^{1-\theta}&=(P_t^T)^{1-\theta}(1-\gamma)+(P_t^N)^{1-\theta}\gamma \\
P_t&=\left((P_t^T)^{1-\theta}(1-\gamma)+(P_t^N)^{1-\theta}\gamma \right)^\frac{1}{1-\theta}
\end{align}
$$

We found price index $P_t$ such that $P_tC_t=P_t^TC_t^T+P_t^NC_t^N$ 

### 1(b)

$$
\begin{cases}
\sigma & \text{elasticity of intertemporal substitution} \\
\theta & \text{elasticity of intratemporal substitution}
\end{cases}
$$

* Elasticity of Intertemporal Substitution

  By how much I am going to increase consumption today if consumption tomorrow becomes 1% more expensive relative to today (see PS2, ex2).

* Elasticity of Intratemporal Substitution

  How much domestic goods I am going yo consume if the price of the tradable good increase by 1% relative to the domestic good (see PS8, ex1).

### 1(c)

Given $P_1^T=P_2^T=1, B_0=0$ , solve household's optimization problem
$$
\begin{align}
\max_{C_1,C_2}\quad & U(C_1,C_2)=\frac{C_1^{1-\frac{1}{\sigma}}}{1-\frac{1}{\sigma}}+
\beta\frac{C_2^{1-\frac{1}{\sigma}}}{1-\frac{1}{\sigma}} \\
\textrm{s.t.}\quad & C_1^T+P_1^NC_1^N=Y_1^T+P_1^NY_1^N-CA_1 \\
& C_2^T+P_2^NC_2^N=Y_2^T+P_2^NY_2^N+(1+r)CA_1
\end{align}
$$
Lifetime budget constraint
$$
\underbrace{P_1C_1+\frac{P_2C_2}{1+r}}_\text{present value of consumption}=
\underbrace{Y_1^T+P_1^NY_1^N+\frac{Y_2^T+P_2^NY_2^N}{1+r}}_\text{present value of lifetime endowment}
$$

$$
C_2=\frac{1+r}{P_2}\left(Y_1^T+P_1^NY_1^N+\frac{Y_2^T+P_2^NY_2^N}{1+r}-P_1C_1\right)
$$

$$
\begin{gather}
\max_{C_1}\quad\frac{C_1^{1-\frac{1}{\sigma}}}{1-\frac{1}{\sigma}}+
\beta\frac{C_2^{1-\frac{1}{\sigma}}}{1-\frac{1}{\sigma}} \\
\textrm{s.t.}\quad C_2=\frac{1+r}{P_2}\left(Y_1^T+P_1^NY_1^N+\frac{Y_2^T+P_2^NY_2^N}{1+r}-P_1C_1\right)
\end{gather}
$$

$$
\text{FOC}:\quad 
C_1^{-\frac{1}{\sigma}}+\beta C_2^{-\frac{1}{\sigma}}\left(-(1+r)\frac{P_1}{P_2}\right)=0 \implies
C_1=\left(\beta(1+r)\frac{P_1}{P_2}\right)^{-\sigma}C_2
$$

$$
C_2=\left(\beta(1+r)\frac{P_1}{P_2}\right)^{\sigma}C_1\quad\text{intertemporal optimality condition}
$$

Note that non-tradable goods must be consumed
$$
\begin{cases}
C_1^N=Y_1^N \\
C_2^N=Y_2^N
\end{cases}
$$
Constraints become
$$
\begin{cases}
C_1^T=Y_1^T-CA_1 \\
C_2^T=Y_2^T+(1+r)CA_1
\end{cases}\implies
C_1^T+\frac{C_2^T}{1+r}=Y_1^T+\frac{Y_2^T}{1+r}
$$

$$
\underbrace{C_1^T+\frac{C_2^T}{1+r}}_\text{discounted lifetime $C^T$}=
\underbrace{Y_1^T+\frac{Y_2^T}{1+r}}_\text{discounted endowment}
$$

In 1(a), we derived
$$
C_t^T=\left(\dfrac{P_t^T}{P_t}\right)^{-\theta}(1-\gamma)C_t \implies
C_t^T=P_t^{\theta}(1-\gamma)C_t \implies
\begin{cases}
C_1^T=P_1^{\theta}(1-\gamma)C_1 \\
C_2^T=P_2^{\theta}(1-\gamma)C_2
\end{cases}
$$

$$
P_1^{\theta}(1-\gamma)C_1+\frac{P_2^{\theta}(1-\gamma)C_2}{1+r}=Y_1^T+\frac{Y_2^T}{1+r}
$$

$$
C_2=\frac{1+r}{P_2^{\theta}(1-\gamma)}
\left(Y_1^T+\frac{Y_2^T}{1+r}-P_1^{\theta}(1-\gamma)C_1\right)\quad
\text{intratemporal optimality condition}
$$

$$
\begin{cases}
C_2=\left(\beta(1+r)\dfrac{P_1}{P_2}\right)^{\sigma}C_1 \\
C_2=\dfrac{1+r}{P_2^{\theta}(1-\gamma)}\left(Y_1^T+\dfrac{Y_2^T}{1+r}-P_1^{\theta}(1-\gamma)C_1\right)
\end{cases}
$$

$$
\begin{align}
\left(\beta(1+r)\dfrac{P_1}{P_2}\right)^{\sigma}P_1^{\theta}(1-\gamma)C_1&=
\left(\frac{P_1}{P_2}\right)^{\theta}(1+r)\left(Y_1^T+\frac{Y_2^T}{1+r}\right)-
\left(\frac{P_1}{P_2}\right)^{\theta}(1+r)P_1^{\theta}(1-\gamma)C_1 \\
\left(\beta(1+r)\dfrac{P_1}{P_2}\right)^{\sigma}C_1^T&=
\left(\frac{P_1}{P_2}\right)^{\theta}(1+r)\left(Y_1^T+\frac{Y_2^T}{1+r}\right)-
\left(\frac{P_1}{P_2}\right)^{\theta}(1+r)C_1^T \\
\beta^{\sigma}(1+r)^{\sigma-1}\dfrac{P_1}{P_2}^{\sigma-\theta}C_1^T&=
Y_1^T+\frac{Y_2^T}{1+r}-C_1^T \\
C_1^T&=\frac{Y_1^T+\dfrac{Y_2^T}{1+r}}{1+\beta^{\sigma}(1+r)^{\sigma-1}\dfrac{P_1}{P_2}^{\sigma-\theta}}
\end{align}
$$

$$
\begin{align}
CA_1&=Y_1^T-C_1^T \\
&=Y_1^T-\frac{Y_1^T+\dfrac{Y_2^T}{1+r}}{1+\beta^{\sigma}(1+r)^{\sigma-1}\dfrac{P_1}{P_2}^{\sigma-\theta}}
\end{align}
$$

### 1(d)

$$
\begin{cases}
\sigma>\theta \\
P^T \text{ is constant over time} \\
P_2>P_1
\end{cases}
$$

* **Intertemporal effect**
  $$
  C_2=\left(\beta(1+r)\frac{P_1}{P_2}\right)^{\sigma}C_1\quad\text{intertemporal optimality condition}
  $$
  Price of consumption tomorrow increases, hence I reduce consumption tomorrow and consume more today (of both tradable and non-tradable goods). According to $CA=Y^T-C^T$ , current account gets smaller.

* **Intratemporal effect**
  $$
  P_t=\left((P_t^T)^{1-\theta}(1-\gamma)+(P_t^N)^{1-\theta}\gamma \right)^\frac{1}{1-\theta}
  $$

  $$
  \begin{cases}
  P_1=\left((P^T)^{1-\theta}(1-\gamma)+(P_1^N)^{1-\theta}\gamma \right)^\frac{1}{1-\theta} \\
  P_2=\left((P^T)^{1-\theta}(1-\gamma)+(P_2^N)^{1-\theta}\gamma \right)^\frac{1}{1-\theta}
  \end{cases}
  $$

  $$
  \begin{align}
  P_2&>P_1 \\
  \left((P^T)^{1-\theta}(1-\gamma)+(P_2^N)^{1-\theta}\gamma \right)^\frac{1}{1-\theta}&>
  \left((P^T)^{1-\theta}(1-\gamma)+(P_1^N)^{1-\theta}\gamma \right)^\frac{1}{1-\theta} \\
  P_2^N&>P_1^N \\
  \end{align}
  $$

  $$
  \frac{P^T}{P_2^N}<\frac{P^T}{P_1^N}
  $$

  Tradable relative to non-tradable is more expensive today than that tomorrow. Hence, I consume less of $C_1^T$ and more of $C_1^N$. $CA$ increases.

Intertemporal effect dominates because $\sigma>\theta$ 



