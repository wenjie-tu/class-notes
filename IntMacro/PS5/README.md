# Problem Set 5

## <u>Exercise 1:</u> Present-Value Model of the Current Account

$$
NO_t\equiv Y_t-I_t-G_t \quad \text{exogenous for households}
$$

### 1(a)

$$
B_{t+1}=(1+r)B_t+NO_t-C_t
$$

$$
\begin{align}
B_t&=\frac{C_t-NO_t}{1+r}+\frac{B_{t+1}}{1+r} \\
B_{t+1}&=\frac{C_{t+1}-NO_{t+1}}{1+r}+\frac{B_{t+2}}{1+r} \\
&\vdots \\
B_{t+T-1}&=\frac{C_{t+T-1}-NO_{t+T-1}}{1+r}+\frac{B_{t+T}}{1+r}
\end{align}
$$

$$
B_t=\sum_{s=0}^{T-1}\frac{C_{t+s}-NO_{t+s}}{(1+r)^{s+1}}+\frac{B_{t+T}}{(1+r)^T}
$$

$$
\text{transverality condition} \quad 
\lim_{T\rightarrow\infty}\frac{B_{t+T}}{(1+r)^T}=0
$$

$$
B_t=\sum_{s=0}^{\infty}\frac{C_{t+s}-NO_{t+s}}{(1+r)^{s+1}}
$$

$$
\text{PVIBC}\quad
\underbrace{(1+r)B_t}_\text{initial financial wealth}+
\underbrace{\sum_{s=0}^{\infty}\frac{NO_{t+s}}{(1+r)^{s}}}_\text{PV lifetime income}=
\underbrace{\sum_{s=0}^{\infty}\frac{C_{t+s}}{(1+r)^{s}}}_\text{PV lifetime consumption}
$$

### 1(b)

$$
\begin{align}
& \max_{C_{t+s},B_{t+s+1}} && U_t=\sum_{s=0}^{\infty}\beta^su(C_{t+s}) \\
& \textrm{s.t.} && B_{t+s+1}=(1+r)B_{t+s}+NO_{t+s}-C_{t+s}
\end{align}
$$

$$
\text{FOC:}
\quad
\frac{\partial U_t}{\partial B_{t+s+1}}=\beta^su'(C_{t+s})\cdot(-1)+
\beta^{s+1}u'(C_{t+s+1})(1+r)=0
$$

$$
\frac{\beta u'(C_{t+s+1})}{u'(C_{t+s})}=\frac{1}{1+r} \quad \textbf{Euler Equation}
$$

Under $\beta=\frac{1}{1+r}$
$$
u'(C_{t+s+1})=u'(C_{t+s}) \implies C_{t+s+1}=C_{t+s}=\overline{C}
$$

$$
\begin{align}
\sum_{s=0}^{\infty}\frac{C_{t+s}}{(1+r)^{s}}&=
(1+r)B_t+\sum_{s=0}^{\infty}\frac{NO_{t+s}}{(1+r)^{s}} \\
\sum_{s=0}^{\infty}\frac{\overline{C}}{(1+r)^{s}}&=
(1+r)B_t+\sum_{s=0}^{\infty}\frac{NO_{t+s}}{(1+r)^{s}} \\
\frac{1+r}{r}\overline{C}&=
(1+r)B_t+\sum_{s=0}^{\infty}\frac{NO_{t+s}}{(1+r)^{s}} \\
\overline{C}&=\frac{r}{1+r}
\left[(1+r)B_t+\sum_{s=0}^{\infty}\frac{NO_{t+s}}{(1+r)^{s}}\right]
\end{align}
$$

$$
\overline{C}=\frac{r}{1+r}
\underbrace{\left[(1+r)B_t+\sum_{s=0}^{\infty}\frac{NO_{t+s}}{(1+r)^{s}}\right]}
_\text{net wealth}
$$

$$
C_t=r\cdot\underbrace{\frac{w}{1+r}}_\text{discounted net wealth}
$$

### 1(c)

#### (i)

$$
\begin{gather}
B_{t+1}=(1+r)B_t+NO_t-C_t \\
\Delta B_{t+1}=r\cdot B_t+NO_t-C_t \\
CA_t=\Delta B_{t+1}=r\cdot B_t+NO_t-C_t
\end{gather}
$$

$$
\begin{align}
CA_t&=rB_t+NO_t-
\frac{r}{1+r}\left[(1+r)B_t+\sum_{s=0}^{\infty}\frac{NO_{t+s}}{(1+r)^{s}}\right] \\
&=-\frac{r}{1+r}\left[\sum_{s=0}^{\infty}\frac{NO_{t+s}}{(1+r)^{s}}-
\frac{1+r}{r}NO_t\right] \quad 
\underline{\sum_{s=0}^{\infty}\frac{1}{(1+r)^s}=\frac{1+r}{r}} \\
&=-\frac{r}{1+r}\left[\sum_{s=0}^{\infty}\frac{NO_{t+s}}{(1+r)^{s}}-
\sum_{s=0}^{\infty}\frac{NO_t}{(1+r)^s}\right] \\
&=-\frac{r}{1+r}\left[\sum_{s=0}^{\infty}\frac{NO_{t+s}-NO_t}{(1+r)^{s}}\right]
\end{align}
$$

## <u>Exercise 2:</u> Isoelastic Utility

$$
X \sim \mathcal{N}(\mu_X,\sigma_X^2)
$$

$\exp(X)$  is log-normal with mean $E[\exp(X)]=\exp(\mu_X+\frac{1}{2}\sigma_X^2)$ 

### 2(a)

$$
\textbf{bond-Euler equation}\quad 
\underbrace{\beta E_t\left[\frac{u'(C_{t+1})}{u'(C_t)}\right]}_\textbf{IMRS}=\frac{1}{1+r} 
\quad\textbf{with}\quad \beta=\frac{1}{1+r}
$$

$$
u(C_t)=\frac{C_t^{1-\rho}-1}{1-\rho} \implies 
\begin{cases}
u'(C_t)=C_t^{-\rho} \\
u''(C_t)=-\rho C_t^{-\rho-1}
\end{cases}
$$

$$
\begin{align}
\beta E_t\left[\frac{u'(C_{t+1})}{u'(C_t)}\right]&=\frac{1}{1+r} \\
E_t\left[\frac{u'(C_{t+1})}{u'(C_t)}\right]&=1 \\
E_t\left[\left(\frac{C_{t+1}}{C_t}\right)^{-\rho}\right]&=1 \\
E_t\left[\exp(-\rho\ln\left(\frac{C_{t+1}}{C_t}\right)) \right]&=1 \\
\end{align}
$$

$$
\begin{gather}
\frac{C_{t+1}}{C_t}\text{ is log-normally distributed} \\
\ln\left(\frac{C_{t+1}}{C_t}\right)\text{ is normally distributed} \\
\exp(-\rho\ln\left(\frac{C_{t+1}}{C_t}\right))\text{ is log-normally distributed}
\end{gather}
$$

$$
\begin{align}
E_t\left[\exp(-\rho\ln\left(\frac{C_{t+1}}{C_t}\right)) \right]&=1 \\
\exp(E_t\left[-\rho\ln\left(\frac{C_{t+1}}{C_t}\right)\right]+
\frac{1}{2}Var_t\left[-\rho\ln\left(\frac{C_{t+1}}{C_t}\right)\right])&=1 
\quad \text{take log of both sides} \\
E_t\left[-\rho\ln\left(\frac{C_{t+1}}{C_t}\right)\right]+
\frac{1}{2}Var_t\left[-\rho\ln\left(\frac{C_{t+1}}{C_t}\right)\right]&=0 \\
E_t\left[\ln\left(\frac{C_{t+1}}{C_t}\right)\right]&=
\underbrace{\frac{1}{2}\rho Var_t\left[\ln\left(\frac{C_{t+1}}{C_t}\right)\right]}
_\text{constant} \\
E_t[\ln(C_{t+1})]-E_t[\ln(C_t)]&=a \\
E_t[\ln(C_{t+1})]&=a+\ln C_t \\
\ln C_{t+1}&=a+\ln C_t+\varepsilon_{t+1} \\
\textbf{Random Walk with dift }a
\end{align}
$$

### 2(b)

$$
\begin{gather}
\textbf{AR(1) with a drift} \\
\begin{cases}
\ln C_{t+1}=a+\ln C_t+\varepsilon_{t+1} \\
\ln C_{t}=a+\ln C_{t-1}+\varepsilon_{t} \\
\quad\quad\quad  \vdots \\
\ln C_{2}=a+\ln C_1+\varepsilon_{2} 
\end{cases}\\
\Downarrow \\
\ln C_{t+1}=a\cdot t+\ln C_1+\sum_{i=2}^{t+1}\varepsilon_i
\end{gather}
$$

$$
\begin{gather}
\ln C_{t+1}
=\underbrace{a\cdot t}_\text{deterministic trend}+
\underbrace{\ln C_1}_\text{initial value}+
\underbrace{\sum_{i=2}^{t+1}\varepsilon_i}_\text{stochastic trend} \\
\textbf{Non-stationary}
\end{gather}
$$

$$
\begin{gather}
\ln C_{t+1}=a+\ln C_t+\varepsilon_{t+1} \\
\text{First Differences:}\quad \Delta\ln C_{t+1}=a+\varepsilon_{t+1} \\
\textbf{Stationary}
\end{gather}
$$

