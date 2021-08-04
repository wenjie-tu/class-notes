# Problem Set 6

## <u>Exercise 1:</u> Shocks and the Current Account

Underlying process for net output
$$
NO_{t+1}-\overline{NO}=\alpha(NO_t-\overline{NO})+\epsilon_{t+1},\quad\alpha\in(0,1)\quad\text{AR(1) process}
$$

### 1(a)

$$
\begin{align}
NO_{t}-\overline{NO}&=\alpha(NO_{t-1}-\overline{NO})+\epsilon_{t} \\
NO_{t-1}-\overline{NO}&=\alpha(NO_{t-2}-\overline{NO})+\epsilon_{t-1} \\
&\vdots \\
NO_{t-k}-\overline{NO}&=\alpha(NO_{t-(k+1)}-\overline{NO})+\epsilon_{t-k}
\end{align}
$$

$$
\begin{align}
NO_t-\overline{NO}&=\alpha^{k+1}(NO_{t-(k+1)}-\overline{NO})+\sum_{s=0}^{k}\alpha^s\epsilon_{t-s} \\
NO_t&=\alpha^{k+1}(NO_{t-(k+1)}-\overline{NO})+\overline{NO}+\sum_{s=0}^{k}\alpha^s\epsilon_{t-s}
\end{align}
$$

For $k\rightarrow\infty$ 
$$
\begin{align}
NO_t&=\underbrace{\lim_{k\rightarrow\infty}\alpha^{k+1}(NO_{t-(k+1)}-\overline{NO})}_{0}+
\overline{NO}+\sum_{s=0}^{\infty}\alpha^s\epsilon_{t-s}\\
&=\overline{NO}+\sum_{s=0}^{\infty}\alpha^s\epsilon_{t-s}\quad\text{MA($\infty$) representation of AR(1) process}
\end{align}
$$

$$
\begin{align}
NO_t=\overline{NO}+\sum_{s=0}^{\infty}\alpha^s\epsilon_{t-s}&\implies 
IR_0=\frac{\partial E_t[NO_t]}{\partial\epsilon_t}=\alpha^0=1 \\
NO_{t+1}=\overline{NO}+\sum_{s=0}^{\infty}\alpha^s\epsilon_{t+1-s}&\implies
IR_1=\frac{\partial E_t[NO_{t+1}]}{\partial\epsilon_t}=\alpha^1=\alpha \\
&\vdots \\
NO_{t+k}=\overline{NO}+\sum_{s=0}^{\infty}\alpha^s\epsilon_{t+k-s}&\implies
IR_k=\frac{\partial E_t[NO_{t+k}]}{\partial\epsilon_t}=\alpha^k \\

\end{align}
$$

Cyclical or transitory component: $NO_{t}-\overline{NO}$
$$
IR_k=\frac{\partial E_t[NO_{t+k}-\overline{NO}]}{\partial\epsilon_t}=
\frac{\partial E_t[NO_{t+k}]}{\partial\epsilon_t}=\alpha^k
$$

### 1(b)

**PS5 (b)** 
$$
\begin{align}
C_t&=\frac{r}{1+r}\left[(1+r)B_t+\sum_{s=0}^{\infty}\frac{E_t[NO_{t+s}]}{(1+r)^s} \right] \\
&=rB_t+\frac{r}{1+r}\sum_{s=0}^{\infty}\frac{E_t[NO_{t+s}]}{(1+r)^s}+\overline{NO}-\overline{NO} \\
&=rB_t+\overline{NO}+\frac{r}{1+r}\left[\sum_{s=0}^{\infty}\frac{E_t[NO_{t+s}]}{(1+r)^s}-\frac{1+r}{r}\overline{NO} \right] \\
&=rB_t+\overline{NO}+\frac{r}{1+r}\left[\sum_{s=0}^{\infty}\frac{E_t[NO_{t+s}]}{(1+r)^s}-
\sum_{s=0}^{\infty}\frac{\overline{NO}}{(1+r)^s} \right] \\
&=rB_t+\overline{NO}+\frac{r}{1+r}\sum_{s=0}^{\infty}\frac{E_t[NO_{t+s}-\overline{NO}]}{(1+r)^s} \\
\end{align}
$$

$$
NO_{t+1}-\overline{NO}=\alpha(NO_t-\overline{NO})+\epsilon_{t+1}
$$

$$
\begin{cases}
s=1: & E_t[NO_{t+1}-\overline{NO}]=\alpha(NO_t-\overline{NO}) \\
s=2: & E_t[NO_{t+2}-\overline{NO}]=\alpha E_t[NO_{t+1}-\overline{NO}]=\alpha^2(NO_t-\overline{NO}) \\
& \vdots \\
s=k: & E_t[NO_{t+k}-\overline{NO}]=\alpha^k(NO_t-\overline{NO})
\end{cases}
$$

$$
\begin{align}
C_t&=rB_t+\overline{NO}+\frac{r}{1+r}\sum_{s=0}^{\infty}\frac{E_t[NO_{t+s}-\overline{NO}]}{(1+r)^s} \\
&=rB_t+\overline{NO}+\frac{r}{1+r}\sum_{s=0}^{\infty}\frac{\alpha^s(NO_t-\overline{NO})}{(1+r)^s} \\
&=rB_t+\overline{NO}+\frac{r}{1+r}(NO_t-\overline{NO})\sum_{s=0}^{\infty}\left(\frac{\alpha}{1+r}\right)^s \\
&=rB_t+\overline{NO}+\frac{r}{1+r}\cdot\frac{1+r}{1+r-\alpha}
(NO_t-\overline{NO}) \\
&=rB_t+\overline{NO}+\frac{r}{1+r-\alpha}
\underbrace{(NO_t-\overline{NO})}_{\alpha(NO_{t-1}-\overline{NO})+\epsilon_t} \\
&=rB_t+\overline{NO}+\frac{r\alpha}{1+r-\alpha}(NO_{t-1}-\overline{NO})+\frac{r}{1+r-\alpha}\epsilon_t
\end{align}
$$

$$
\frac{\partial C_t}{\partial\epsilon_t}=\frac{r}{1+r-\alpha}<1\quad \alpha\in(0,1)
$$

A positive shock to net output leads to a consumption rise which is less than 1 to 1 because such an increase in the output is temporary (NO is stationary). Households want to smooth consumption. The larger $\alpha$ is, the stronger is the reaction to consumption.

### 1(c)

$$
\begin{align}
CA_t&=rB_t+NO_t-C_t \\
&=rB_t+NO_t-\left(rB_t+\overline{NO}+\frac{r\alpha}{1+r-\alpha}(NO_{t-1}-\overline{NO})+\frac{r}{1+r-\alpha}\epsilon_t\right)\\
&=(NO_t-\overline{NO})-\frac{r\alpha}{1+r-\alpha}(NO_{t-1}-\overline{NO})-\frac{r}{1+r-\alpha}\epsilon_t \\
&=\alpha(NO_{t-1}-\overline{NO})+\epsilon_t-\frac{r\alpha}{1+r-\alpha}(NO_{t-1}-\overline{NO})-\frac{r}{1+r-\alpha}\epsilon_t \\
&=(\alpha-\frac{r\alpha}{1+r-\alpha})(NO_{t-1}-\overline{NO})+(1-\frac{r}{1+r-\alpha})\epsilon_t \\
&=\frac{\alpha(1-\alpha)}{1+r-\alpha}(NO_{t-1}-\overline{NO})+\frac{1-\alpha}{1+r-\alpha}\epsilon_t
\end{align}
$$

$$
\frac{\partial CA_t}{\partial\epsilon_t}=\frac{1-\alpha}{1+r-\alpha}>0,\quad\alpha\in(0,1)
$$

A positive shock to net output leads to an increase in current account because the households want to smooth consumption by running CA surplus over time.

### 1(d)

Underlying process for net output 
$$
\Delta NO_t=\alpha\Delta NO_{t-1}+\epsilon_t\quad\text{where }0<\alpha<1
$$
Following this underlying process, $NO$ is stationary in differences but not in levels

#### (i)

$$
\begin{align}
\Delta NO_t&=\alpha\Delta NO_{t-1}+\epsilon_t \\
\Delta NO_{t-1}&=\alpha\Delta NO_{t-2}+\epsilon_{t-1} \\
&\vdots \\
\Delta NO_{t-k}&=\alpha\Delta NO_{t-(k+1)}+\epsilon_{t-k} \\
\end{align}
$$

$$
\Delta NO_t=\alpha^{k+1}\Delta NO_{t-(k+1)}+\sum_{s=0}^{k}\alpha^s\epsilon_{t-s}
$$

$k\rightarrow\infty$ :
$$
\begin{align}
\Delta NO_t&=\underbrace{\lim_{k\rightarrow\infty}\alpha^{k+1}\Delta NO_{t-(k+1)}}_{0}+
\sum_{s=0}^{\infty}\alpha^s\epsilon_{t-s} \\
&=\sum_{s=0}^{\infty}\alpha^s\epsilon_{t-s}
\end{align}
$$

$$
NO_t=NO_{t-1}+\sum_{s=0}^{\infty}\alpha^s\epsilon_{t-s}
$$

$$
\begin{align}
\Delta NO_t=\sum_{s=0}^{\infty}\alpha^s\epsilon_{t-s} &\implies
\frac{\partial E_t[\Delta NO_t]}{\partial\epsilon_t}=1 \\
\Delta NO_{t+1}=\sum_{s=0}^{\infty}\alpha^s\epsilon_{t+1-s} &\implies
\frac{\partial E_t[\Delta NO_{t+1}]}{\partial\epsilon_t}=\alpha \\
&\vdots \\
\Delta NO_{t+k}=\sum_{s=0}^{\infty}\alpha^s\epsilon_{t+k-s} &\implies
\frac{\partial E_t[\Delta NO_{t+k}]}{\partial\epsilon_t}=\alpha^k \\
\end{align}
$$

$$
\begin{align}
E_t[NO_{t+k}-NO_{t-1}]&=E_t[\Delta NO_t+\Delta NO_{t+1}+\cdots+\Delta NO_{t+k}] \\
\frac{\partial E_t[NO_{t+k}]}{\partial\epsilon_t}&=\frac{\partial E_t[\Delta NO_t]}{\partial\epsilon_t}+
\frac{\partial E_t[\Delta NO_{t+1}]}{\partial\epsilon_t}+\cdots+
\frac{\partial E_t[\Delta NO_{t+k}]}{\partial\epsilon_t} \\
&=1+\alpha+\cdots+\alpha^k \\
&=\sum_{s=0}^{k}\alpha^s
\end{align}
$$

The IR of $\Delta NO$ is geometrically declining while shocks to $NO$ in levels have a permanent effect.
$$
\text{Long-run effect}\quad\sum_{s=0}^{\infty}\alpha^s=\frac{1}{1-\alpha}
$$

#### (ii)

$$
C_t=rB_t+\frac{r}{1+r}\sum_{s=0}^{\infty}\frac{E_t[NO_{t+s}]}{(1+r)^s}
$$

$$
\begin{align}
\frac{\partial C_t}{\partial\epsilon_t}&=\frac{r}{1+r}\sum_{s=0}^{\infty}\left(\frac{1}{1+r}\right)^s
\frac{\partial E_t[NO_{t+s}]}{\partial\epsilon_t} \\
&=\frac{r}{1+r}\left[\frac{\partial E_t[NO_{t}]}{\partial\epsilon_t}+
\frac{1}{1+r}\frac{\partial E_t[NO_{t+1}]}{\partial\epsilon_t}+
\left(\frac{1}{1+r}\right)^2\frac{\partial E_t[NO_{t+2}]}{\partial\epsilon_t}+\cdots\right] \\
&=\frac{r}{1+r}\left[1+\frac{1}{1+r}\cdot(1+\alpha)+\left(\frac{1}{1+r}\right)^2(1+\alpha+\alpha^2)+\cdots \right]\\
&=\frac{r}{1+r}\left[\sum_{s=0}^{\infty}\left(\frac{1}{1+r}\right)^s+
\sum_{s=1}^{\infty}\frac{\alpha}{(1+r)^s}+\sum_{s=2}^{\infty}\frac{\alpha^2}{(1+r)^s}+\cdots \right] \\
&=\frac{r}{1+r}\left[\frac{1+r}{r}+
\sum_{s=1}^{\infty}\frac{\alpha}{(1+r)^s}+\sum_{s=2}^{\infty}\frac{\alpha^2}{(1+r)^s}+\cdots \right] \\
&=1+\frac{r}{1+r}\left[\sum_{s=1}^{\infty}\frac{\alpha}{(1+r)^s}+\sum_{s=2}^{\infty}\frac{\alpha^2}{(1+r)^s}+\cdots\right]\\
&=1+\frac{r}{1+r}\sum_{l=1}^{\infty}\sum_{s=l}^{\infty}\frac{\alpha^l}{(1+r)^s} \\
\end{align}
$$

$$
\begin{align}
\frac{\partial C_t}{\partial\epsilon_t}&=1+\frac{r}{1+r}\sum_{l=1}^{\infty}\sum_{s=l}^{\infty}\frac{\alpha^l}{(1+r)^s} \\
&=1+\frac{r}{1+r}\left[\sum_{s=1}^{\infty}\frac{\alpha}{(1+r)^s}+\sum_{s=2}^{\infty}\frac{\alpha^2}{(1+r)^s}+\cdots \right]\\
&=1+\frac{r}{1+r}\left[\left(\frac{\alpha}{1+r}+\frac{\alpha}{(1+r)^2}+\cdots \right) 
+\left(\frac{\alpha^2}{(1+r)^2}+\frac{\alpha^2}{(1+r)^3}+\cdots \right)+\cdots
\right] \\
&=1+\frac{r}{1+r}\left[
\frac{\alpha}{1+r}\left(1+\frac{1}{1+r}+\cdots \right) 
+\frac{\alpha^2}{(1+r)^2}\left(1+\frac{1}{1+r}+\cdots \right)+\cdots
\right] \\
&=1+\frac{r}{1+r}\left(\frac{\alpha}{1+r}+\frac{\alpha^2}{(1+r)^2}+\cdots \right)\left(1+\frac{1}{1+r}+\cdots \right) \\
&=1+\frac{r}{1+r}\sum_{s=1}^{\infty}\left(\frac{\alpha}{1+r} \right)^s\sum_{s=0}^{\infty}\left(\frac{1}{1+r}\right)^s \\
&=1+\sum_{s=1}^{\infty}\left(\frac{\alpha}{1+r} \right)^s \\
&=\sum_{s=0}^{\infty}\left(\frac{\alpha}{1+r} \right)^s \\
&=\frac{1+r}{1+r-\alpha} \\
&=1+\frac{\alpha}{1+r-\alpha}>1
\end{align}
$$

Consumption will increase more than 1 to 1 following a positive shock to output because households expect more output in the future.
$$
CA_t=rB_t+NO_t-C_t
$$

$$
\begin{align}
\frac{\partial CA_t}{\partial\epsilon_t}&=\frac{\partial NO_t}{\partial\epsilon_t}-\frac{\partial C_t}{\partial\epsilon_t}\\
&=1-\left(1+\frac{\alpha}{1+r-\alpha} \right) \\
&=-\frac{\alpha}{1+r-\alpha}<0
\end{align}
$$
Since the rise in consumption overshoots the one in output, the CA will decline.

## <u>Exercise 2:</u> Intertemporal Approach to the Current Account

The intertemporal approach to the CA states that (with quadratic utility) CA equals discounted expected future change in net output. CA deficits today mean that we expect NO to increase in the future.

From previous exercise, we know that shocks to net output have different effects on the current account depending on the shock of the underlying process for net output

* If the underlying process for net output is stationary in levels, then positive shocks lead to an increase in consumption that is less than 1 to 1 and the CA is increasing (procyclical).

* If the underlying process for net output is non-stationary in levels, then positive shocks today induce consumption to increase by more than 1 to 1 such that the country runs a CA deficit (countercyclical).

The intertemporal approach therefore can lead to countercyclical CA as we observe in EMEs.