# Exam 20

## 1

$$
CA_t=-\sum_{k=1}^{\infty}\frac{\pmb{E}_t(\Delta NO_{t+k})}{(1+r)^k}
$$

### 1(a)

$$
\begin{align}
NO_t&=1.25NO_{t-1}-0.25NO_{t-2}+\varepsilon_t \\
NO_t-NO_{t-1}&=0.25(NO_{t-1}-NO_{t-2})+\varepsilon_t \\
\Delta NO_{t}&=0.25\Delta NO_{t-1}+\varepsilon_t \quad\text{AR(1) representation}
\end{align}
$$

$$
\begin{align}
\Delta NO_{t}&=0.25\Delta NO_{t-1}+\varepsilon_t \\
\Delta NO_{t-1}&=0.25\Delta NO_{t-2}+\varepsilon_{t-1} \\
\Delta NO_{t-2}&=0.25\Delta NO_{t-3}+\varepsilon_{t-2} \\
& \vdots \\
\Delta NO_{t-k}&=0.25\Delta NO_{t-(k+1)}+\varepsilon_{t-k}
\end{align}
\implies
\Delta NO_{t}=(0.25)^{k+1}\Delta NO_{t-(k+1)}+\sum_{s=0}^{k}(0.25)^{s}\varepsilon_{t-s}
$$

$$
\begin{gather}
k\to\infty \\
\Delta NO_{t}=\underbrace{\lim_{k\to\infty}(0.25)^{k+1}\Delta NO_{t-(k+1)}}_{0}+
\sum_{s=0}^{\infty}(0.25)^{s}\varepsilon_{t-s} \\
\Delta NO_{t}=\sum_{s=0}^{\infty}(0.25)^{s}\varepsilon_{t-s} \quad\text{MA($\infty$) representation}
\end{gather}
$$

$$
\begin{align}
\Delta NO_{t}=\sum_{s=0}^{\infty}(0.25)^{s}\varepsilon_{t-s}\implies& 
\frac{\partial E_t[\Delta NO_t]}{\partial\varepsilon_t}=1 \\
\Delta NO_{t+1}=\sum_{s=0}^{\infty}(0.25)^{s}\varepsilon_{t+1-s}\implies& 
\frac{\partial E_t[\Delta NO_{t+1}]}{\partial\varepsilon_t}=0.25 \\
\vdots & \\
\Delta NO_{t+k}=\sum_{s=0}^{\infty}(0.25)^{s}\varepsilon_{t+k-s}\implies& 
\frac{\partial E_t[\Delta NO_{t+k}]}{\partial\varepsilon_t}=(0.25)^k

\end{align}
$$

$$
\begin{align}
\frac{\partial CA_t}{\partial\varepsilon_t}&=-\sum_{k=1}^{\infty}\frac{1}{(1+r)^k}
\left(
\frac{\partial E_t[\Delta NO_{t+k}]}{\partial\varepsilon_t}
\right) \\
&=-\sum_{k=1}^{\infty}\left(\frac{0.25}{1+r} \right)^k \\
&=-\frac{0.25}{1+r}\times\frac{1}{1-\frac{0.25}{1+r}} \\
&=-\frac{0.25}{1+r}\times\frac{1+r}{0.75+r} \\
&=-\frac{1}{3+4r}
\end{align}
$$

The IR of $\Delta NO$ is geometrically declining while shocks to $NO$ in levels have a have a permanent effect.
$$
\text{Long-run effect:}\quad \sum_{s=0}^{\infty}\alpha^s=\frac{1}{1-\alpha}
$$
Consumption will increase more than 1 to 1 following a possible shock to output because households expect more output in the future.

Since the underlying process for net output is non-stationary in levels but stationary in differences, the rise in consumption overshoots the one in output and CA will decline.

### 1(b)

**VAR:**
$$
Z_t=\pmb{\mathrm{A}}Z_{t-1}+\epsilon_t
$$

$$
Z_t'=
\begin{bmatrix}
\Delta NO_t & CA_t
\end{bmatrix}
$$

$$
\mathrm{\pmb{A}}=
\begin{bmatrix}
a_{11} & a_{12} \\
a_{21} & a_{22}
\end{bmatrix}
$$

$$
\begin{cases}
\Delta NO_t=a_{11}\Delta NO_{t-1}+a_{12}CA_t+\epsilon_{1,t} \\
CA_t=a_{21}\Delta NO_{t-1}+a_{22}CA_t+\epsilon_{2,t}

\end{cases}
$$

**Wald test:**
$$
\begin{gather}
-\begin{bmatrix} 
\frac{1}{1+r} & 0
\end{bmatrix}
\mathrm{\pmb{A}}
\left[
\mathrm{\pmb{I}}-\left(\frac{1}{1+r} \right)\mathrm{\pmb{A}}
\right]^{-1}=
\begin{bmatrix}
0 & 1
\end{bmatrix} \\

-\begin{bmatrix} 
\frac{1}{1+r} & 0
\end{bmatrix}
\mathrm{\pmb{A}}
=
\begin{bmatrix}
0 & 1
\end{bmatrix}
\left[
\mathrm{\pmb{I}}-\left(\frac{1}{1+r} \right)\mathrm{\pmb{A}}
\right]

\end{gather}
$$

$$
\begin{align}
-\begin{bmatrix} 
\frac{1}{1+r} & 0
\end{bmatrix}
\mathrm{\pmb{A}}
&=
\begin{bmatrix}
0 & 1
\end{bmatrix}
\left[
\mathrm{\pmb{I}}-\left(\frac{1}{1+r} \right)\mathrm{\pmb{A}}
\right] \\

-\begin{bmatrix} 
\frac{1}{1+r} & 0
\end{bmatrix}
\begin{bmatrix}
a_{11} & a_{12} \\
a_{21} & a_{22}
\end{bmatrix}
&=
\begin{bmatrix}
0 & 1
\end{bmatrix}
\begin{Bmatrix}
\begin{bmatrix}
1 & 0 \\
0 & 1
\end{bmatrix}-
\left(\frac{1}{1+r} \right)
\begin{bmatrix}
a_{11} & a_{12} \\
a_{21} & a_{22}
\end{bmatrix}
\end{Bmatrix} \\

-\begin{bmatrix} 
\frac{a_{11}}{1+r} & \frac{a_{12}}{1+r}
\end{bmatrix}
&=
\begin{bmatrix}
0 & 1
\end{bmatrix}
\begin{bmatrix}
1-\frac{a_{11}}{1+r} & -\frac{a_{12}}{1+r} \\
-\frac{a_{21}}{1+r} & 1-\frac{a_{22}}{1+r}
\end{bmatrix}
\\

-\begin{bmatrix} 
\frac{a_{11}}{1+r} & \frac{a_{12}}{1+r}
\end{bmatrix}
&=
\begin{bmatrix}
-\frac{a_{21}}{1+r} & 1-\frac{a_{22}}{1+r}
\end{bmatrix}

\end{align}
$$

$$
\begin{cases}
-\dfrac{a_{11}}{1+r}=-\dfrac{a_{12}}{1+r} \\
-\dfrac{a_{12}}{1+r}=1-\dfrac{a_{22}}{1+r}
\end{cases}\implies
\begin{cases}
a_{11}=a_{12} \\
a_{12}=a_{22}-(1+r)
\end{cases}
$$

### 1(c)

![image-20210618223916414](C:\Users\89358\AppData\Roaming\Typora\typora-user-images\image-20210618223916414.png)

![image-20210624220534695](C:\Users\89358\AppData\Roaming\Typora\typora-user-images\image-20210624220534695.png)

### 1(d)

Glick and Rogoff identified in the data for G7 countries:
$$
\begin{cases}
\gamma<0 \\
|\gamma|<1
\end{cases}
$$
PVMCA implications:
$$
\begin{cases}
\gamma<0 \\
|\gamma|>1
\end{cases}
$$

In Glick-Rogoff study, empirical data (G7 countries) show:

* CA does not react to the global shocks (consistent with the model).
* A positive country-specific shock leads to a decline in the CA (consistent with the model).
* The CA reacts less strongly than investment to a country-specific shock (CA does not overshoot investment, which is not consistent with the model).

Reconcile:

Total Factor Productivity shock is unexpected and permanent ($A$ follows a random walk). We can set $0<\rho<1$ to reconcile this. $A$ follows an AR(1) process:
$$
A_{t+1}=\rho A_t+\epsilon_{t+1} 
$$

$$
E_t(A_{t+1})=\rho A_t
$$

In this case, productivity shocks are not permanent any more. Such shocks are transitory and will die out over time.

## 2

### 2(a)

#### 1

$$
\begin{align}
Y_2^W(1)&=Y_2(1)+Y_2^{\star}(1)=1+3=4 \\
Y_2^W(2)&=Y_2(2)+Y_2^{\star}(2)=\frac{5}{2}+\frac{3}{2}=4
\end{align}
$$

$$
\begin{align}
\frac{p(1)}{p(2)}&=
\left(
\frac{Y_2^W(1)}{Y_2^W(2)}
\right)^{-1}
\frac{\pi(1)}{\pi(2)}=2
\end{align}
$$

$$
\begin{cases}
p(1)=2p(2) \\
p(1)+p(2)=1
\end{cases}\implies
\begin{cases}
p(1)=\dfrac{2}{3} \\
p(2)=\dfrac{1}{3}
\end{cases}
$$

$$
Y_1^W=Y_1+Y_1^{\star}=4
$$

$$
\begin{align}
\beta\pi(1)\left(\frac{Y_1^W}{Y_2^W(1)} \right)^{\rho}&=\frac{p(1)}{1+r} \\
0.9\times\frac{2}{3}\left(\frac{4}{4} \right)^{1}&=\frac{\frac{2}{3}}{1+r} \\
r&=\frac{1}{9}
\end{align}
$$

$$
\begin{align}
CA_1&=\frac{\beta}{1+\beta}Y_1-\frac{1}{1+\beta}
\left[
\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r}
\right] \\
&=\frac{0.9}{1+0.9}\times2-\frac{1}{1+0.9}
\left[
\frac{\frac{2}{3}\times1+\frac{1}{3}\times\frac{5}{2}}{1+\frac{1}{9}}
\right] \\
&=\frac{9}{38}\quad (0.2368)
\end{align}
$$

The Home country is running a current account surplus. Home country is relatively poorer than Foreign country in period 2, hence it will run a current surplus by buying A.D. securities. Prices are actuarially fair, agents fully insure themselves.

#### 2

$$
\begin{align}
Y_2^W(1)&=Y_2(1)+Y_2^{\star}(1)=1+3=4 \\
Y_2^W(2)&=Y_2(2)+Y_2^{\star}(2)=\frac{5}{2}+\frac{3}{2}=4
\end{align}
$$

$$
\begin{align}
\frac{p(1)}{p(2)}&=
\left(
\frac{Y_2^W(1)}{Y_2^W(2)}
\right)^{-1}
\frac{\pi(1)}{\pi(2)}=\frac{1}{3}
\end{align}
$$

$$
\begin{cases}
3p(1)=p(2) \\
p(1)+p(2)=1
\end{cases}\implies
\begin{cases}
p(1)=\dfrac{1}{4} \\
p(2)=\dfrac{3}{4}
\end{cases}
$$

$$
Y_1^W=Y_1+Y_1^{\star}=4
$$

$$
\begin{align}
\beta\pi(1)\left(\frac{Y_1^W}{Y_2^W(1)} \right)^{\rho}&=\frac{p(1)}{1+r} \\
0.9\times\frac{1}{4}\left(\frac{4}{4} \right)^{1}&=\frac{\frac{1}{4}}{1+r} \\
r&=\frac{1}{9}
\end{align}
$$

$$
\begin{align}
CA_1&=\frac{\beta}{1+\beta}Y_1-\frac{1}{1+\beta}
\left[
\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r}
\right] \\
&=\frac{0.9}{1+0.9}\times2-\frac{1}{1+0.9}
\left[
\frac{\frac{1}{4}\times1+\frac{3}{4}\times\frac{5}{2}}{1+\frac{1}{9}}
\right] \\
&=-\frac{9}{152}\quad (-0.0592)
\end{align}
$$

The current account becomes negative. Home country is long A.D. security that pays in state 1 because it is relatively poorer in state 1 than 2. However, home country sells more than it buys ($CA<0$).

### 2(b)

Consumption growth across countries should be perfectly correlated. A country's consumption is correlated with the world output and not with the own country's output.

**Regression-based test**

Measurement error (preference shocks) may drive a wedge between consumption growth rates across locations. Under full insurance, we would still expect that such departures of consumption from cross-sectional mean should not be systematically correlated with any idiosyncratic shocks.

Cochrane (1991) suggested a cross-sectional regression of the form:
$$
\log \left(\frac{C_{t+1}^{k}}{C_t^k} \right)=\alpha+\beta X_{t+1}^{k}+\epsilon_{t+1}^k
$$
 where $X_{t+1}^k$ is an idiosyncratic shock variable. Under full insurance, we should not reject $\beta=0$ .

Mace (1991) and Townsend (1994) considered panel regressions of the form:
$$
\Delta c_{t+1}^k=\beta_1\Delta c_{t+1}+\beta_2\Delta y_{t+1}^k+\epsilon_{t+1}^k+(\delta^k)
$$
Under full risk sharing, we should expect $\beta_1=1$ and $\beta_2=0$ .

In all these specifications, measurement error or preference shocks that are uncorrelated with the idiosyncratic variables would be captured by the error terms. Hence, consumption correlations could be lower than unity, even though there is full risk sharing.

We see a lot more risk sharing between US federal states than we see in international data. There seems to be a lack of consumption risk sharing in international data.
