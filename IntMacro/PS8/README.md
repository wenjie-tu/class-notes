# Problem Set 8

## Traded and non-traded goods

**Utility function**
$$
\begin{gather}
U(C_N,C_T)=\left[\gamma^{\frac{1}{\theta}}C_N^{\frac{\theta-1}{\theta}}+
(1-\gamma)^{\frac{1}{\theta}}C_T^{\frac{\theta-1}{\theta}} \right]^{\frac{\theta}{\theta-1}} \\
\begin{cases}
C_N & \text{consumption of the non-tradable good} \\
C_T & \text{consumption of the tradable good}
\end{cases}
\end{gather}
$$
**Budget constraint**
$$
\begin{gather}
C_T+\frac{P_N}{P_T}C_N=rB_0+Y_T+\frac{P_N}{P_T}Y_N-CA \\
\begin{cases}
P_N & \text{price of the non-tradable good } Y_N \\
P_T & \text{price of the tradable good } Y_T \\
CA & \text{current account} \\
B_0 & \text{a given stock of foreign assets} \\
r & \text{interest rate}
\end{cases}
\end{gather}
$$

## <u>Exercise 1</u>

**Derive and interpret**
$$
\theta=-\frac{\mathrm{d}\log\left(\frac{C_T}{C_N} \right)}{\mathrm{d}\log\left(\frac{P_T}{P_N} \right)}
$$
*Proof*

solve representative agent optimization problem
$$
\begin{align}
\max_{C_T,C_N}\quad & U(C_N,C_T) \\
\mathrm{s.t.}\quad & C_T+\frac{P_N}{P_T}C_N=rB_0+Y_T+\frac{P_N}{P_T}Y_N-CA \\
\end{align}
$$

$$
\max_{C_N}\quad U(C_N)=\left[\gamma^{\frac{1}{\theta}}C_N^{\frac{\theta-1}{\theta}}+
(1-\gamma)^{\frac{1}{\theta}}\left(rB_0+Y_T+\frac{P_N}{P_T}Y_N-CA-\frac{P_N}{P_T}C_N \right)
^{\frac{\theta-1}{\theta}} \right]^{\frac{\theta}{\theta-1}}
$$

FOC w.r.t. $C_N$ 
$$
\frac{\partial U(C_N)}{\partial C_N}=\frac{\theta}{\theta-1}
\left[\gamma^{\frac{1}{\theta}}C_N^{\frac{\theta-1}{\theta}}+
(1-\gamma)^{\frac{1}{\theta}}C_T^{\frac{\theta-1}{\theta}} \right]^{\frac{\theta}{\theta-1}-1}
\left(\gamma^{\frac{1}{\theta}}\frac{\theta-1}{\theta}C_N^{\frac{\theta-1}{\theta}-1}+
(1-\gamma)^{\frac{1}{\theta}}\frac{\theta-1}{\theta}C_T^{\frac{\theta-1}{\theta}-1}\left(-\frac{P_N}{P_T} \right) \right)=0
$$

$$
\begin{gather}
\underbrace{\left[\gamma^{\frac{1}{\theta}}C_N^{\frac{\theta-1}{\theta}}+
(1-\gamma)^{\frac{1}{\theta}}C_T^{\frac{\theta-1}{\theta}} \right]^{\frac{\theta}{\theta-1}-1}}_\text{positive}
\left(\gamma^{\frac{1}{\theta}}C_N^{\frac{\theta-1}{\theta}-1}+
(1-\gamma)^{\frac{1}{\theta}}C_T^{\frac{\theta-1}{\theta}-1}\left(-\frac{P_N}{P_T} \right) \right)=0 \\
\gamma^{\frac{1}{\theta}}C_N^{\frac{\theta-1}{\theta}-1}+
(1-\gamma)^{\frac{1}{\theta}}C_T^{\frac{\theta-1}{\theta}-1}\left(-\frac{P_N}{P_T} \right)=0
\end{gather}
$$

$$
\begin{align}
\gamma^{\frac{1}{\theta}}C_N^{\frac{\theta-1}{\theta}-1}&=
(1-\gamma)^{\frac{1}{\theta}}C_T^{\frac{\theta-1}{\theta}-1}\frac{P_N}{P_T} \\
\left(\frac{\gamma}{C_N}\right)^{\frac{1}{\theta}}&=\left(\frac{1-\gamma}{C_T}\right)^{\frac{1}{\theta}}\frac{P_N}{P_T} \\
\frac{\gamma}{C_N}&=\frac{1-\gamma}{C_T}\left(\frac{P_N}{P_T}\right)^\theta \\
\frac{C_T}{C_N}&=\frac{1-\gamma}{\gamma}\left(\frac{P_N}{P_T}\right)^\theta \\
\log\left(\frac{C_T}{C_N}\right)&=\log\left(\frac{1-\gamma}{\gamma} \right)-\theta\log\left(\frac{P_T}{P_N} \right) \\
\mathrm{d}\log\left(\frac{C_T}{C_N}\right)&=-\theta\mathrm{d}\log\left(\frac{P_T}{P_N} \right) \\
\theta&=-\frac{\mathrm{d}\log\left(\frac{C_T}{C_N}\right)}{\mathrm{d}\log\left(\frac{P_T}{P_N} \right)}
\end{align}
$$

$\theta$ is the intratemporal elasticity of substitution

$\theta$ tells us by how many percent the relative consumption of tradable to non-tradable goods, $\frac{C_T}{C_N}$ , changes if the relative price $\frac{P_T}{P_N}$ increases by 1%

## <u>Exercise 2</u>

$$
\begin{cases}
P=\phi(P_N,P_T) & \text{home price index} \\
P^{\star}=\phi(P_N^{\star},P_T^{\star}) & \text{foreign price index}
\end{cases}
$$

where $\phi(\cdot)$ is increasing in $P_T$ and $P_N$ and homogeneous of degree one.

#### 2(a)

$$
\begin{gather}
\because \phi(\cdot) \text{ is homogenous of degree 1} \\
\therefore 
\begin{cases}
P\equiv\phi(P_N,P_T)=P_T\phi(\frac{P_N}{P_T},1) \\
P^{\star}\equiv\phi(P_N^{\star},P_T^{\star})=P_T^{\star}\phi(\frac{P_N^{\star}}{P_T^{\star}}, 1)
\end{cases}
\end{gather}
$$

**Real exchange rate (RER)**
$$
\lambda=\frac{E\cdot P^{\star}}{P}
$$
**Nominal exchange rate**
$$
\begin{gather}
E\equiv\frac{\textrm{Domestic currency}}{\textrm{Foreign currency}} \\
\text{price of foreign currency currency in terms of domestric currency}
\end{gather}
$$

$$
\begin{align}
\lambda&=\frac{E\cdot P^{\star}}{P} \\
&=\frac{E\cdot\phi(P_N^{\star},P_T^{\star})}{\phi(P_N,P_T)} \\
&=\frac{E\cdot P_T^{\star}\phi(\frac{P_N^{\star}}{P_T^{\star}}, 1)}{P_T\phi(\frac{P_N}{P_T},1)} \\
&=\frac{\phi(\frac{P_N^{\star}}{P_T^{\star}}, 1)}{\phi(\frac{P_N}{P_T},1)}\quad\text{By Law of One Price}
\end{align}
$$

**Law of One Price** for tradable goods: $P_T=E\cdot P_T^{\star}$ 
$$
\frac{P_N}{P_T}\downarrow\implies\phi(\frac{P_N}{P_T},1)\downarrow \& P\downarrow \implies\lambda\uparrow
$$
If non-tradable goods become relatively cheaper, the RER depreciate. You have to pay more domestic goods in order to obtain 1 unit of foreign good.

#### 2(b)

$$
\begin{align}
\min_{C_T,C_N}\quad & P_T\cdot C_T+P_N\cdot C_N \\
\textrm{s.t.}\quad & \left[\gamma^{\frac{1}{\theta}}C_N^{\frac{\theta-1}{\theta}}+
(1-\gamma)^{\frac{1}{\theta}}C_T^{\frac{\theta-1}{\theta}} \right]^{\frac{\theta}{\theta-1}}=1
\end{align}
$$

$$
\begin{gather}
\mathcal{L}=P_T\cdot C_T+P_N\cdot C_N-P\left(\left[\gamma^{\frac{1}{\theta}}C_N^{\frac{\theta-1}{\theta}}+
(1-\gamma)^{\frac{1}{\theta}}C_T^{\frac{\theta-1}{\theta}} \right]^{\frac{\theta}{\theta-1}}-1 \right) \\
P \text{ is a shadow price of consumption}
\end{gather}
$$

FOC w.r.t. $C_T$ 
$$
\frac{\partial\mathcal{L}}{\partial C_T}=P_T-P\left(\frac{\theta}{\theta-1}
\left[\gamma^{\frac{1}{\theta}}C_N^{\frac{\theta-1}{\theta}}+
(1-\gamma)^{\frac{1}{\theta}}C_T^{\frac{\theta-1}{\theta}} \right]^{\frac{1}{\theta-1}}
(1-\gamma)^{\frac{1}{\theta}}\frac{\theta-1}{\theta}C_T^{-\frac{1}{\theta}}
\right)=0
$$

$$
\begin{align}
C_T^{\frac{1}{\theta}}&=\left(\frac{P_T}{P}\right)^{-1}\left[\gamma^{\frac{1}{\theta}}C_N^{\frac{\theta-1}{\theta}}+
(1-\gamma)^{\frac{1}{\theta}}C_T^{\frac{\theta-1}{\theta}} \right]^{\frac{1}{\theta-1}} 
(1-\gamma)^{\frac{1}{\theta}} \\
C_T&=\left(\frac{P_T}{P}\right)^{-\theta}\left[\gamma^{\frac{1}{\theta}}C_N^{\frac{\theta-1}{\theta}}+
(1-\gamma)^{\frac{1}{\theta}}C_T^{\frac{\theta-1}{\theta}} \right]^{\frac{\theta}{\theta-1}} 
(1-\gamma) \\
&=\left(\frac{P_T}{P}\right)^{-\theta}(1-\gamma)
\end{align}
$$

FOC w.r.t. $C_N$
$$
\frac{\partial\mathcal{L}}{\partial C_N}=P_N-P\left(\frac{\theta}{\theta-1}
\left[\gamma^{\frac{1}{\theta}}C_N^{\frac{\theta-1}{\theta}}+
(1-\gamma)^{\frac{1}{\theta}}C_T^{\frac{\theta-1}{\theta}} \right]^{\frac{1}{\theta-1}}
\gamma^{\frac{1}{\theta}}\frac{\theta-1}{\theta}C_N^{-\frac{1}{\theta}}
\right)=0
$$

$$
\begin{align}
C_N&=\left(\frac{P_N}{P}\right)^{-\theta}\left[\gamma^{\frac{1}{\theta}}C_N^{\frac{\theta-1}{\theta}}+
(1-\gamma)^{\frac{1}{\theta}}C_T^{\frac{\theta-1}{\theta}} \right]^{\frac{\theta}{\theta-1}}\gamma \\
&=\left(\frac{P_N}{P}\right)^{-\theta}\gamma
\end{align}
$$

$$
\begin{align}
P&=P_T\cdot C_T+P_N\cdot C_N \\
P&=P_T\left(\frac{P_T}{P}\right)^{-\theta}(1-\gamma)+P_N\left(\frac{P_N}{P}\right)^{-\theta}\gamma \\
P^{1-\theta}&=(1-\gamma)P_T^{1-\theta}+\gamma P_N^{1-\theta} \\
P&=\left((1-\gamma)P_T^{1-\theta}+\gamma P_N^{1-\theta}\right)^{\frac{1}{1-\theta}}
\end{align}
$$

$$
\begin{align}
\lim_{\theta\to1}P&=\lim_{\theta\to1}\left((1-\gamma)P_T^{1-\theta}+\gamma P_N^{1-\theta}\right)^{\frac{1}{1-\theta}} \\
\lim_{\theta\to1}\ln P&=\lim_{\theta\to1}\frac{\ln\left((1-\gamma)P_T^{1-\theta}+\gamma P_N^{1-\theta}\right)}
{1-\theta}\quad\text{apply L'Hopital's rule }\frac{0}{0} \\
&=\lim_{\theta\to1}\frac{(1-\gamma)P_T^{1-\theta}\ln P_T+\gamma P_N^{1-\theta}\ln P_N}
{(1-\gamma)P_T^{1-\theta}+\gamma P_N^{1-\theta}} \\
\ln P&=(1-\gamma)\ln P_T+\gamma \ln P_N \\
P&=P_N^{\gamma}P_T^{1-\gamma}\quad\text{Cobb Douglas form}
\end{align}
$$

RER
$$
\begin{align}
\lambda&=\frac{E\cdot P^{\star}}{P} \\
&=\frac{E\cdot P_N^{\star\gamma}P_T^{\star 1-\gamma}}{P_N^{\gamma}P_T^{1-\gamma}} \\
&=\left(\frac{E\cdot P_N^{\star}}{P_N}\right)^{\gamma}\left(\frac{E\cdot P_T^{\star}}{P_T}\right)^{1-\gamma} \\
&=\left(\frac{E\cdot P_N^{\star}}{P_N}\right)^{\gamma}\quad\text{Law of One Price}
\end{align}
$$
RER is a function of the relative price of non-tradable goods in home and foreign countries (if the law of one price holds for the tradable sector)

## <u>Exercise 3</u>

#### Case I: Endowment Economy

$$
\begin{cases}
\alpha & \text{labour elasticity} \\
\gamma & \text{relative weight of non-tradables} \\
\theta & \text{intratemporal elasticity of substitution} \\
\frac{B_0}{Y} & \text{relative stock of foreign bonds} \\
\frac{CA}{Y} & \text{relative current account} \\
r & \text{interest rate}
\end{cases}
$$

#### (a)

**Optimality condition in consumption**
$$
\frac{C_T}{C_N}=\frac{1-\gamma}{\gamma}\left(\frac{P_N}{P_T}\right)^\theta 
\implies C_T(C_N)=\frac{1-\gamma}{\gamma}\left(\frac{P_N}{P_T}\right)^\theta C_N\quad\textbf{IEP(income expansion path)}
$$
This function is the IEP (income expansion path), which decreases the optimal consumption bundle for a given income level. However, with a CES utility, it is independent of wealth. No matter how rich a household is, it consumes the tradable and non-tradable goods in fixed proportion
$$
\begin{align}
NX&=CA-rB_0 \\
\frac{NX}{Y}&=\frac{CA}{Y}-\frac{rB_0}{Y} \\
&=-6.4\%+6\%\times20.4\% \\
&=5.2\%
\end{align}
$$

![image-20210609225920419](C:\Users\89358\AppData\Roaming\Typora\typora-user-images\image-20210609225920419.png)

#### (b)

use identity of $CA$ : 
$$
\begin{cases}
CA=rB_0+NX \\
NX=Y_T-C_T
\end{cases}
\quad\text{where $NX$ is necessarily expressed in tradable goods} 
$$

$$
\begin{align}
C_T+\frac{P_N}{P_T}C_N&=rB_0+Y_T+\frac{P_N}{P_T}Y_N-CA \\
C_T&=rB_0+Y_T-CA \\
CA&=rB_0+Y_T-C_T
\end{align}
$$

Reason: $C_N=Y_N$ should hold in equilibrium.
$$
CA=rB_0+\underbrace{Y_T-C_T}_{NX=PCA}
$$

What is the $\frac{P_N}{P_T}$ associated with $\frac{CA}{Y}=-6.4\%$ ? For a CA deficit to result which price will lead to be higher $P_N$ or $P_T$ 
$$
\frac{CA}{Y}=\frac{rB_0}{Y}+\frac{Y_T}{Y}-\frac{C_T}{Y}
$$
Express GDP in units of tradable good:
$$
Y=Y_T+\frac{P_N}{P_T}\cdot Y_N
$$
Rearrange above equation:
$$
\frac{Y_T}{Y}=1-\frac{P_N}{P_T}\cdot\frac{Y_N}{Y}
$$
The IEP from the optimality condition in consumption and using $C_N=Y_N$ 
$$
\frac{C_T}{Y}=\frac{1-\gamma}{\gamma}\left(\frac{P_N}{P_T} \right)^{\theta}\frac{Y_N}{Y}
$$

Plug $\begin{cases}
\frac{Y_T}{Y}=1-\frac{P_N}{P_T}\cdot\frac{Y_N}{Y} \\
\frac{C_T}{Y}=\frac{1-\gamma}{\gamma}\left(\frac{P_N}{P_T} \right)^{\theta}\frac{Y_N}{Y}
\end{cases}$ into $\frac{CA}{Y}=\frac{rB_0}{Y}+\frac{Y_T}{Y}-\frac{C_T}{Y}$,
$$
\frac{CA}{Y}=\frac{rB_0}{Y}1-\frac{P_N}{P_T}\cdot\frac{Y_N}{Y}-
\frac{1-\gamma}{\gamma}\left(\frac{P_N}{P_T} \right)^{\theta}\frac{Y_N}{Y}
$$
$\theta=1$
$$
\begin{align}
\frac{CA}{Y}&=\frac{rB_0}{Y}+1-\frac{P_N}{P_T}\cdot\frac{Y_N}{Y}-
\frac{1-\gamma}{\gamma}\cdot\frac{P_N}{P_T}\cdot\frac{Y_N}{Y} \\
\frac{1}{\gamma}\cdot\frac{P_N}{P_T}\cdot\frac{Y_N}{Y}&=\frac{rB_0}{Y}+1-\frac{CA}{Y} \\
\frac{P_N}{P_T}&=\frac{\frac{rB_0}{Y}+1-\frac{CA}{Y}}{\frac{1}{\gamma}\cdot\frac{Y_N}{Y}} \\
&=\frac{6\%\times(-20.4\%)+1+6.4\%}{\frac{4}{3}\cdot\frac{2}{3}} \\
&\approx1.1832
\end{align}
$$
Transfer effect: a ceteris paribus increase in $r\cdot\frac{B_0}{Y}$ implies increase in $\frac{P_N}{P_T}$ . A creditor country tends to have higher $P_N$ and therefore relatively more valuable currencies $\lambda=\frac{E\cdot P^{\star}}{P}$ . On the other hand, debtor countries tend to have relatively weak currencies.

#### (c)

Optimal $\frac{C_T}{C_N}$ associated with $\frac{CA}{Y}$ of $-6.4\%$ 
$$
\frac{C_T}{C_N}=\frac{1-\gamma}{\gamma}\left(\frac{P_N}{P_T} \right)^\theta=\frac{0.25}{0.75}\times1.1832\approx0.3944
$$

#### (d)

In order to balance the CA, how does $\frac{P_N}{P_T}$ have to adjust?
$$
\begin{align}
\frac{P_N}{P_T}&=\frac{\frac{rB_0}{Y}+1-\frac{CA}{Y}}{\frac{1}{\gamma}\cdot\frac{Y_N}{Y}} \\
&=\frac{6\%\times(-20.4\%)+1+0}{\frac{4}{3}\cdot\frac{2}{3}} \\
&\approx1.1112(<1.1832)
\end{align}
$$
The relative price of non-tradables would need to be lower in order to close the CA deficit. Hence, the real exchange rate would depreciate.
$$
CA=rB_0+NX<0
$$
In order to close the CA deficit, 
$$
CA=0\implies NX=-rB_0>0\quad(\text{since }B_0<0 )
$$
NX must be equal to the interest payment on foreign bond holdings, i.e., the interest payment to the rest of the world (run a trade surplus). This can be achieved if households have an incentive to cut consumption of tradable goods. The price of non-tradable goods has to be lower.

![image-20210609230159175](C:\Users\89358\AppData\Roaming\Typora\typora-user-images\image-20210609230159175.png)



#### (e)

Calculate the optimal relative demand, $\frac{C_T}{C_N}$ , associated with zero CA
$$
\frac{C_T}{C_N}=\frac{1-\gamma}{\gamma}\left(\frac{P_N}{P_T} \right)^\theta=
\frac{0.25}{0.75}\times1.1112=0.3704(<0.3944)
$$
$\frac{C_T}{C_N}$ decreases as tradables become relatively more expensive.

#### (f)

From **Exercise 2 (b)** , we know that RER (real exchange rate)
$$
\begin{align}
\lambda&=\frac{E\cdot P_N^{\star\gamma}P_T^{\star(1-\gamma)}}{P_N^{\gamma}P_T^{1-\gamma}} \\
&=\frac{E\cdot P_T^{\star}}{P_T}\cdot\left(\frac{P_N^\star/P_T^\star}{P_N/P_T}\right)^\gamma\quad
\text{note that $\frac{E\cdot P_T^{\star}}{P_T}=1$ by Law of One Price} \\
&=\left(\frac{P_N^\star/P_T^\star}{P_N/P_T}\right)^\gamma
\end{align}
$$

$$
\begin{align}
\frac{\Delta\lambda}{\lambda}&=\frac{\left(\frac{P_N^\star/P_T^\star}{P_N'/P_T}\right)^\gamma-
\left(\frac{P_N^\star/P_T^\star}{P_N/P_T}\right)^\gamma}
{\left(\frac{P_N^\star/P_T^\star}{P_N/P_T}\right)^\gamma} \\
&=\left(\frac{P_N/P_T}{P_N'/P_T}\right)^\gamma -1 \\
&=\left(\frac{1.1832}{1.1112} \right)^{0.75}-1 \\
&=0.0482
\end{align}
$$

Th real exchange rate must depreciate by $4.82\%$ in order to close the CA deficit.

#### Case II: Production Economy

#### (a)

$$
\begin{cases}
Y_T=A_TL_T^\alpha \\
Y_N=A_NL_N^\alpha
\end{cases}
\implies
\begin{cases}
L_T=\left(\frac{Y_T}{A_T} \right)^{\frac{1}{\alpha}} \\
L_N=\left(\frac{Y_N}{A_N} \right)^{\frac{1}{\alpha}}
\end{cases}
$$

$$
\begin{align}
L&=L_T+L_N \\
L&=\left(\frac{Y_T}{A_T} \right)^{\frac{1}{\alpha}}+\left(\frac{Y_N}{A_N} \right)^{\frac{1}{\alpha}} \\
Y_T(Y_N)&=A_T\left(L-\left(\frac{Y_N}{A_N} \right)^{\frac{1}{\alpha}} \right)^\alpha\quad\textbf{PPF}
\end{align}
$$

This is the **Production Possibility Frontier**. It is possible to show that PPF is downward sloping and concave, i.e., $\frac{\partial Y_T}{\partial Y_N}<0, \frac{\partial^2 Y_T}{\partial Y_N^2}<0$ (This is a result of decreasing marginal ?)
$$
\begin{align}
\frac{\partial Y_T}{\partial Y_N}&=\alpha A_T\left(L-\left(\frac{Y_N}{A_N} \right)^{\frac{1}{\alpha}} \right)^{\alpha-1}
\left(-\frac{1}{\alpha}\left(\frac{Y_N}{A_N} \right)^{\frac{1}{\alpha}-1}\frac{1}{A_N} \right) \\
&=-A_TL_T^{\alpha-1}L_N^{1-\alpha}\frac{1}{A_N} \\
&=-\frac{A_T}{A_N}\left(\frac{L_N}{L_T} \right)^{1-\alpha}<0
\end{align}
$$

$$
\begin{align}
\frac{\partial Y_T}{\partial Y_N}&=-\frac{A_T}{A_N}\left(\frac{L_N}{L_T} \right)^{1-\alpha} \\
&=-\frac{A_T}{A_N}\left(\frac{L_T}{L_N} \right)^{\alpha-1} \\
&=-\frac{A_T}{A_N}\left(\frac{L-L_N}{L_N} \right)^{\alpha-1} \\
&=-\frac{A_T}{A_N}\left(\frac{L}{L_N} -1\right)^{\alpha-1} \\
&=-\frac{A_T}{A_N}\left(\frac{L}{\left(\frac{Y_N}{A_N} \right)^{\frac{1}{\alpha}}} -1\right)^{\alpha-1} \\
&=-\frac{A_T}{A_N}\left(L\left(\frac{Y_N}{A_N} \right)^{-\frac{1}{\alpha}} -1\right)^{\alpha-1}<0
\end{align}
$$

$$
\begin{align}
\frac{\partial^2 Y_T}{\partial Y_N^2}&=-\frac{A_T}{A_N}(\alpha-1)
\left(L\left(\frac{Y_N}{A_N} \right)^{-\frac{1}{\alpha}} -1\right)^{\alpha-2}
\left(L\left(-\frac{1}{\alpha} \right)\left(\frac{Y_N}{A_N} \right)^{-\frac{1}{\alpha}-1}\frac{1}{A_N} \right)<0
\end{align}
$$

![image-20210609225113719](C:\Users\89358\AppData\Roaming\Typora\typora-user-images\image-20210609225113719.png)

#### (b)

Profit maximization of firms in tradable goods sector:
$$
\begin{align}
\max_{L_T}&\quad P_TY_T-wL_T=P_TA_TL_T^\alpha-w_TL_T \\
\textrm{FOC:}&\quad P_T\alpha A_TL_T^{\alpha-1}-w_T=0 \implies w_T=P_T\alpha A_TL_T^{\alpha-1}
\end{align}
$$
Profit maximization of firms in non-tradable goods sector:
$$
\begin{align}
\max_{L_N}&\quad P_NY_N-wL_N=P_NA_NL_N^\alpha-w_NL_N \\
\textrm{FOC:}&\quad P_N\alpha A_NL_N^{\alpha-1}-w_N=0 \implies w_N=P_N\alpha A_NL_N^{\alpha-1} 
\end{align}
$$
 Since labor is perfectly mobile, both sectors must pay the same wage
$$
\begin{align}
w_T&=w_N \\
P_T\alpha A_TL_T^{\alpha-1}&=P_N\alpha A_NL_N^{\alpha-1} \\
P_T\frac{Y_T}{L_T}&=P_N\frac{Y_N}{L_N} \\
\frac{P_N}{P_T}&=\frac{\frac{Y_T}{L_T}}{\frac{Y_N}{L_N}}
\end{align}
$$

$$
\frac{P_N}{P_T}=\frac{A_TL_T^{\alpha-1}}{A_NL_N^{\alpha-1}}=\frac{A_T}{A_N}\left(\frac{L_T}{L_N} \right)^{\alpha-1}
$$

The optimal firm behavior implies that the marginal rate of transformation (which equals the absolute value of the slope of the PPF) should be equal to the relative price of non-tradable.

#### (c)

Given $\frac{CA}{Y}=-6.4\%$ and $\frac{Y_N}{Y}=\frac{2}{3}$ , what is $\frac{A_T}{A_N}$ ?
$$
\frac{A_T}{A_N}=\frac{P_N}{P_T}\left(\frac{L_T}{L_N} \right)^{1-\alpha}
$$
$\frac{P_N}{P_T}$ under condition that $\frac{CA}{Y}=-6.4\%$ is $1.1832$ . $\frac{P_N}{P_T}$ is as in the endowment economy because households take income as exogenously given no matter whether it is an endowment or production economy.
$$
\frac{P_N}{P_T}=\frac{\frac{Y_T}{L_T}}{\frac{Y_N}{L_N}}=\frac{Y_T}{Y_N}\cdot\frac{L_N}{L_T}\implies
\frac{Y_T}{Y_N}=\frac{P_N}{P_T}\cdot\frac{L_T}{L_N}
$$
Express GDP in units of tradable good:
$$
Y=Y_T+\frac{P_N}{P_T}\cdot Y_N
$$
Rearrange above equation:
$$
\frac{Y}{Y_N}=\frac{Y_T}{Y_N}+\frac{P_N}{P_T}
$$
Plug $\frac{Y_T}{Y_N}=\frac{P_N}{P_T}\cdot\frac{L_T}{L_N}$ into $\frac{Y}{Y_N}=\frac{Y_T}{Y_N}+\frac{P_N}{P_T}$:
$$
\frac{Y}{Y_N}=\frac{P_N}{P_T}\cdot\frac{L_T}{L_N}+\frac{P_N}{P_T} \implies
\frac{L_T}{L_N}=\frac{P_T}{P_N}\cdot\frac{Y}{Y_N}-1
$$

$$
\frac{L_T}{L_N}=\frac{1}{1.832}\times\frac{3}{2}-1=0.2677
$$

$$
\begin{align}
\frac{A_T}{A_N}&=\frac{P_N}{P_T}\left(\frac{L_T}{L_N} \right)^{1-\alpha} \\
&=1.1832\times(0.2677)^{1-0.6} \\
&=0.6985
\end{align}
$$

Hence, the productivity in the tradabe good sector is relatively low. Therefore, the economy imports these goods and run a current account deficit.

#### (d)

$$
\begin{gather}
PCA=NX \\
\text{impose}\quad NX=0\implies C_T=Y_T
\end{gather}
$$

Optimal consumption requires
$$
\frac{C_T}{C_N}=\frac{Y_T}{Y_N}=\frac{1-\gamma}{\gamma}\left(\frac{P_N}{P_T} \right)^\theta
$$
Optimal production requires
$$
\frac{P_N}{P_T}=\frac{\frac{Y_T}{L_T}}{\frac{Y_N}{L_N}}\implies
\frac{Y_T}{Y_N}=\frac{P_N}{P_T}\cdot\frac{L_T}{L_N}
$$

$$
\begin{align}
\because & \quad\theta=1 \\
\therefore & \quad \frac{Y_T}{Y_N}=\frac{P_N}{P_T}\cdot\frac{L_T}{L_N}=
\frac{1-\gamma}{\gamma}\cdot\frac{P_N}{P_T} \\
& \quad\frac{L_T}{L_N}=\frac{1-\gamma}{\gamma}=\frac{0.25}{0.75}=\frac{1}{3}>0.2677 \text{ acquired from (c)}
\end{align}
$$

* With $\frac{CA}{Y}=-6.4\%$ and $NX\neq0$ , we had $\frac{L_T}{L_T}=0.2677$ 

* With $NX=0$ , labor has to move to the tradable sector, and thus produce relatively more $Y_T$ 

In order to get $NX=0$ 
$$
\frac{P_N}{P_T}=\frac{A_T}{A_N}\left(\frac{L_N}{L_T} \right)^{1-\alpha}=0.6985\times3^{1-0.6}=1.0839
$$

$$
\frac{\Delta \frac{P_N}{P_T}}{\frac{P_N}{P_T}}=\frac{1.0839-1.1832}{1.1832}=-0.084
$$

Thus, the relative price of NT goods must decline by $8.4\%$ to achieve a $PCA=0$ .

How about $\frac{C_T}{C_N}$ associated with $NX=0$ and $PCA=0$ 
$$
\frac{C_T}{C_N}=\frac{1-\gamma}{\gamma}\cdot\frac{P_N}{P_T}=\frac{0.25}{0.75}\times1.0839=0.3613
$$
![image-20210609224549661](C:\Users\89358\AppData\Roaming\Typora\typora-user-images\image-20210609224549661.png)

