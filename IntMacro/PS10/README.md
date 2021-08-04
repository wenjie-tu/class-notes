# Problem Set 10

## <u>Exercise 1:</u> Market Completeness and Risk Sharing

|             |    $t=1$    |   $t=2$    |
| :---------: | :---------: | :--------: |
|  **Home**   |    $Y_1$    |  $Y_2(s)$  |
| **Foreign** | $Y_1^\star$ | $Y_2^*(s)$ |

$s\in\{1,\cdots, \mathcal{S}\}$ state of nature that occurs with probability $\pi(s)>0$ .

Asset markets are complete, i.e., for each state of the world, there is a state contingent Arrow-Debreu security.

* State contingent: payment depends on the state of nature
* Arrow-Debreu security: name for a security in a complete market
* Complete market: "I can always buy an umbrella when it rains"

$$
\begin{cases}
B_2(s) & \text{Arrow-Debreu security} \\
\widetilde{p}(s) & \text{price of Arrow-Debreu security} \\
p(s) & \text{state price} \\
r & \text{return on a risk-free bond}
\end{cases}
$$

### 1(a)

Household problem
$$
\begin{align}
\max_{C_1,C_2}\quad & \frac{C_1^{1-\rho}-1}{1-\rho}+\beta\sum_{s=1}^{\mathcal{S}}\pi(s)\frac{(C_2(s))^{1-\rho}-1}{1-\rho} \\
\textrm{s.t.}\quad & \text{period t=1 BC:}\quad C_1+\sum_{s=1}^{\mathcal{S}}\frac{p(s)}{1+r}B_2(s)=Y_1 \\
& \text{period t=2 BC:}\quad C_2(s)=Y_2(s)+B_2(s)

\end{align}
$$

$$
\max_{B_2}\quad \frac{(Y_1-\sum_{s=1}^{\mathcal{S}}\frac{p(s)}{1+r}B_2(s))^{1-\rho}-1}{1-\rho}+
\beta\sum_{s=1}^{\mathcal{S}}\pi(s)\frac{(Y_2(s)+B_2(s))^{1-\rho}-1}{1-\rho}
$$

$$
\text{FOC $(B_2)$:}\quad C_1^{-\rho}\cdot\left(-\frac{p(s)}{1+r} \right)+\beta\pi(s)C_2^{-\rho}=0
\implies\beta\pi(s)\left(\frac{C_1}{C_2(s)} \right)^\rho=\frac{p(s)}{1+r}
$$

$$
\underbrace{\beta\pi(s)\left(\frac{C_1}{C_2(s)} \right)^\rho}_\text{marginal rate of intertemporal substitution}=
\underbrace{\frac{p(s)}{1+r}}_\text{price of Arrow-Debreu}
$$

* Marginal rate of intertemporal substitution: How much $C_1$ I am willing to give up today for an extra unit of $C_2(s)$ tomorrow

**Intuition:**

My willingness to pay for one unit of $C_2(s)$ is equal to my willingness to give up one unit of $C_1$ to gain one unit of $C_2(s)$ tomorrow



### 1(b)

Assume that household cannot save (there is no saving technology)

World market clearing
$$
\begin{align}
C_1+C_1^{\star}&=Y_1+Y_1^{\star}\equiv Y_1^W \\
C_2(s)+C_2^{\star}(s)&=Y_2(s)+Y^{\star}(s)\equiv Y_2^W(s)\quad\forall s\in\{1,2,\cdots,\mathcal{S}\}
\end{align}
$$
From (a), we derived
$$
\beta\pi(s)\left(\frac{C_1}{C_2(s)} \right)^\rho=\frac{p(s)}{1+r}\implies
C_2(s)=\left(\beta\pi(s)\frac{1+r}{p(s)}\right)^{\frac{1}{\rho}}C_1
$$

$$
\begin{align}
C_2(s)&=\left(\beta\pi(s)\frac{1+r}{p(s)}\right)^{\frac{1}{\rho}}C_1 \\
C_2^\star(s)&=\left(\beta\pi(s)\frac{1+r}{p(s)}\right)^{\frac{1}{\rho}}C_1^\star
\end{align}
\implies
C_2(s)+C_2^\star(s)=\left(\beta\pi(s)\frac{1+r}{p(s)}\right)^{\frac{1}{\rho}}(C_1+C_1^\star)
$$

$$
\underbrace{C_2(s)+C_2^\star(s)}_{Y_2^W(s)}=\left(\beta\pi(s)\frac{1+r}{p(s)}\right)^{\frac{1}{\rho}}
\underbrace{(C_1+C_1^\star)}_{Y_1^W}
$$

$$
\left(\frac{Y_2^W(s)}{Y_1^W}\right)^\rho=\beta\pi(s)\frac{1+r}{p(s)}
$$

Similarly, for state $s'$ 
$$
\left(\frac{Y_2^W(s')}{Y_1^W}\right)^\rho=\beta\pi(s')\frac{1+r}{p(s')}
$$

$$
\begin{cases}
\left(\frac{Y_2^W(s)}{Y_1^W}\right)^\rho=\beta\pi(s)\frac{1+r}{p(s)} \\
\left(\frac{Y_2^W(s')}{Y_1^W}\right)^\rho=\beta\pi(s')\frac{1+r}{p(s')}
\end{cases}
\implies
\left(\frac{Y_2^W(s)}{Y_2^W(s')}\right)^{\rho}=\frac{\pi(s)}{\pi(s')}\cdot\frac{p(s')}{p(s)}
\implies
\left(\frac{Y_2^W(s)}{Y_2^W(s')}\right)^{-\rho}\frac{\pi(s)}{\pi(s')}=\frac{p(s)}{p(s')}
$$

**Intuition:**

If global output is the same in all states $s,s'$ (i.e., if agents perfectly insure themselves against any state of the world), $\frac{p(s')}{p(s)}=\frac{\pi(s')}{\pi(s)}$ . Arrow-Debreu price fully reflects the state probabilities (i.e., prices are actuarially fair). If prices are actuarially fair, the agents insure themselves fully. However, if there is aggregate uncertainty (e.g., $Y_2^W(s)>Y_2^W(s')$), then $\frac{p(s')}{p(s)}>\frac{\pi(s')}{\pi(s)}$ , i.e., consumption in state $s'$ is more expensive than the actuarially fair price.

### 1(c)

$$
\beta\pi(s)\left(\frac{C_1}{C_2(s)} \right)^\rho=\frac{p(s)}{1+r}\implies
\frac{C_2(s)}{C_1}=\left(\beta\pi(s)\frac{1+r}{p(s)} \right)^{\frac{1}{\rho}}
$$

By analogy
$$
\frac{C_2^\star(s)}{C_1^\star}=\left(\beta\pi(s)\frac{1+r}{p(s)} \right)^{\frac{1}{\rho}}
$$

$$
\frac{Y_2^W(s)}{Y_1^W}=\left(\beta\pi(s)\frac{1+r}{p(s)}\right)^{\frac{1}{\rho}}
$$

$$
\frac{C_2(s)}{C_1}=\frac{C_2^\star(s)}{C_1^\star}=\frac{Y_2^W(s)}{Y_1^W}\quad\forall s\in\{1,2,\cdots,\mathcal{S}\}
$$

### 1(d)

**Interpretation:**

* Consumption growth across countries should be perfectly correlated. 
* A country's consumption is correlated with the world output and not with the own country output.

**Empirical facts:** Backus, Kehoe, Kydland (1992)

Consumption correlation across countries is low. 

Consumption Correlation Puzzle Cochrane (JPE 1991) 

**Possible explanations:**

* Asset markets are not complete.
* No saving assumption is problematic: different saving preferences across countries may lower the correlation of consumption growth.

### 1(e)

$$
u(C)=\log (C)\quad\text{and}\quad\mathcal{S}=2
$$

$$
\begin{align}
\max_{C_1,C_2}\quad & \log(C_1)+\beta\sum_{s=1}^{\mathcal{S}}\pi(s)\log(C_2(s)) \\
\textrm{s.t.}\quad & \text{period t=1 BC:}\quad C_1+\sum_{s=1}^{\mathcal{S}}\frac{p(s)}{1+r}B_2(s)=Y_1 \\
& \text{period t=2 BC:}\quad C_2(s)=Y_2(s)+B_2(s)

\end{align}
$$

$$
\begin{align}
\text{period t=1 BC:}\quad & C_1+\sum_{s=1}^{\mathcal{S}}\frac{p(s)}{1+r}B_2(s)=Y_1 \\
\text{period t=2 BC:}\quad & C_2(s)=Y_2(s)+B_2(s) \\
\Downarrow & \\
\text{period t=1 BC:}\quad & C_1+\frac{p(1)}{1+r}B_2(1)+\frac{p(2)}{1+r}B_2(2)=Y_1 \\
\text{period t=2 BC:}\quad & C_2(1)=Y_2(1)+B_2(1)\quad\text{or}\quad C_2(2)=Y_2(2)+B_2(2)
\end{align}
$$

$$
C_1+\frac{p(1)}{1+r}(C_2(1)-Y_2(1))+\frac{p(2)}{1+r}(C_2(2)-Y_2(2))=Y_1 
$$

$$
\underbrace{C_1+\frac{p(1)C_2(1)+p(2)C_2(2)}{1+r}}_\text{expected PV of consumption}=
\underbrace{Y_1+\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r}}_\text{expected PV of endowment}
$$

**Euler equation:**
$$
\beta\pi(s)\frac{C_1}{C_2(s)}=\frac{p(s)}{1+r}\implies
\frac{p(s)C_2(s)}{1+r}=\beta\pi(s)C_1\implies
\begin{cases}
\dfrac{p(1)C_2(1)}{1+r}=\beta\pi(1)C_1 \\
\dfrac{p(2)C_2(2)}{1+r}=\beta\pi(2)C_1
\end{cases}
$$

$$
\begin{align}
C_1+\frac{p(1)C_2(1)+p(2)C_2(2)}{1+r}&=Y_1+\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \\
C_1+\beta\pi(1)C_1+\beta\pi(2)C_1&=Y_1+\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \\
(1+\beta)C_1&=Y_1+\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \\
C_1&=\frac{1}{1+\beta}\left(Y_1+\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \right)
\end{align}
$$

Consumption is a constant fraction of the lifetime income.
$$
\begin{align}
CA_1&=rB_1+Y_1-C_1 \\
&=Y_1-C_1 \\
&=Y_1-\frac{1}{1+\beta}\left(Y_1+\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \right) \\
&=\frac{\beta}{1+\beta}Y_1-\frac{1}{1+\beta}\left(\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \right)
\end{align}
$$

### 1(f)

Under autarky condition, there is no trade in A.D. security with other countries, i.e., $B_2(s)=0$ 
$$
\begin{cases}
C_1+\sum_{s=1}^{\mathcal{S}}\dfrac{p(s)}{1+r}B_2(s)=Y_1 \\
C_2(s)=Y_2(s)+B_2(s)
\end{cases}\implies
\begin{cases}
C_1=Y_1 \\
C_2(s)=Y_2(s)\quad\forall s\in\{1,2\}
\end{cases}
$$
**Euler equation:**
$$
\beta\pi(s)\frac{C_1}{C_2(s)}=\frac{p(s)}{1+r}\implies
\beta\pi(s)\frac{Y_1}{Y_2(s)}=\frac{p(s)^A}{1+r^A}\implies
\begin{cases}
\beta\pi(1) Y_1=\dfrac{p(1)^A}{1+r^A}Y_2(1) \\
\beta\pi(2) Y_1=\dfrac{p(2)^A}{1+r^A}Y_2(2)
\end{cases}
\quad\forall s=\{1,2\}
$$

$$
\begin{align}
CA_1&=\frac{\beta}{1+\beta}Y_1-\frac{1}{1+\beta}\left(\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \right) \\
&=\frac{1}{1+\beta}\left(\beta Y_1-\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \right) \\
&=\frac{1}{1+\beta}\left(\beta\pi(1) Y_1+\beta\pi(2) Y_1-\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \right) \\
&=\frac{1}{1+\beta}\left(\frac{p(1)^A}{1+r^A}Y_2(1)+\frac{p(2)^A}{1+r^A}Y_2(2)-\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \right) \\
&=\frac{Y_2(1)}{1+\beta}\left(\frac{p(1)^A}{1+r^A}-\frac{p(1)}{1+r}\right)+
\frac{Y_2(2)}{1+\beta}\left(\frac{p(2)^A}{1+r^A}-\frac{p(2)}{1+r}\right)
\end{align}
$$

**Interpretation:**

Under autarky condition, no trade happens.

However, the CA depends positively on the difference of autarky prices and world prices of A.D. security, implying that if $\dfrac{p(s)^A}{1+r^A}>\dfrac{p(s)}{1+r}\quad\forall s$  , then upon gaining market access, the country would like to buy the A.D. security, thus exporting consumption today (for consumption tomorrow). The CA would indeed be positive (CA surplus).

### 1(g)

We derived in (e)
$$
C_1=\frac{1}{1+\beta}\left(Y_1+\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \right)
$$
**Euler equation:**
$$
\beta\pi(s)\frac{C_1}{C_2(s)}=\frac{p(s)}{1+r}\implies C_1=
\frac{1}{\beta\pi(s)}\cdot\frac{p(s)}{1+r}C_2(s)
$$

$$
\begin{align}
C_1&=\frac{1}{1+\beta}\left(Y_1+\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \right) \\
\frac{1}{\beta\pi(s)}\cdot\frac{p(s)}{1+r}C_2(s)&=\frac{1}{1+\beta}\left(Y_1+\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \right) \\
\frac{p(s)}{1+r}C_2(s)&=\frac{\beta\pi(s)}{1+\beta}\left(Y_1+\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \right) \\
\end{align}
$$

$$
\begin{align}
\frac{p(s)}{1+r}C_2(s)&=\frac{\beta\pi(s)}{1+\beta}\left(Y_1+\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \right) \\
\frac{p(s)}{1+r}\left(Y_2(s)+B_2(s)\right)&=\frac{\beta\pi(s)}{1+\beta}\left(Y_1+\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \right) \\
\frac{p(s)}{1+r}B_2(s)&=\frac{\beta\pi(s)}{1+\beta}\left(Y_1+\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \right)-\frac{p(s)}{1+r}Y_2(s) \\
\frac{p(s)}{1+r}B_2(s)&=
\pi(s)\left(\frac{\beta}{1+\beta}Y_1-
\frac{1}{1+\beta}\left(\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \right)+\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \right)
-\frac{p(s)}{1+r}Y_2(s) \\
\frac{p(s)}{1+r}B_2(s)&=\pi(s)\left(CA_1+\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \right)-\frac{p(s)}{1+r}Y_2(s) \\
\end{align}
$$

$s=1$: 
$$
\begin{align}
\frac{p(1)}{1+r}B_2(1)&=\pi(1)\left(CA_1+\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r} \right)-\frac{p(1)}{1+r}Y_2(1) \\
&=\pi(1)CA_1-\frac{p(1)}{1+r}Y_2(1)(1-\pi(1))+\pi(1)\frac{p(2)Y_2(2)}{1+r} \\
&=\pi(1)CA_1-\pi(2)\frac{p(1)Y_2(1)}{1+r}+\pi(1)\frac{p(2)Y_2(2)}{1+r} \\
&=\pi(1)CA_1+\frac{\pi(2)p(2)Y_2(1)}{1+r}\left(\frac{\pi(1)}{\pi(2)}\cdot\frac{Y_2(2)}{Y_2(1)}-\frac{p(1)}{p(2)} \right) \\
&=\pi(1)CA_1+\frac{\pi(2)p(2)Y_2(1)}{1+r}\left(\frac{p(1)^A}{p(2)^A}-\frac{p(1)}{p(2)} \right)
\end{align}
$$
$s=2$: 
$$
\frac{p(2)}{1+r}B_2(2)=\pi(2)CA_1-\frac{\pi(2)p(2)Y_2(1)}{1+r}\left(\frac{p(1)^A}{p(2)^A}-\frac{p(1)}{p(2)} \right)
$$
**Interpretation:**

When $CA_1=0$ , the country spends on the A.D. security that has a relative price in autarky higher than in the open economy and sells the security that has a low relative price in autarky. This means the country insures itself by buying claims to receive consumption goods shoud a bad realize (high $p^A$) and by selling claims to export consumption should a good state realize.

