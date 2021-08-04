# Mid-Term Exercise

## 1

$$
\begin{gather}
U_t=\pmb{E}_t\left\{\sum_{s=0}^{\infty}\beta^su(C_{t+s}) \right\} \\
\text{with}\quad u(C_{t+s})=-\frac{1}{2}(h-C_{t+s})^2 \\
\text{IBC:}\quad B_{t+1}=(1+r)B_t+NO_t-C_t \\
\lim_{k\to\infty}\frac{B_{t+k}}{(1+r)^k}=0
\end{gather}
$$

### 1(a)

Under the assumption that $\beta(1+r)=1$ ,
$$
CA_t=-\sum_{k=1}^{\infty}\frac{\pmb{E}_t(\Delta NO_{t+k})}{(1+r)^k}
$$
VAR:
$$
\underbrace{\begin{bmatrix}
\Delta NO_{t+1} \\
CA_{t+1}
\end{bmatrix}}_{\pmb{Z}_{t+1}}
=
\underbrace{\begin{bmatrix}
a_{11} & a_{12} \\
a_{21} & a_{22}
\end{bmatrix}}_{\pmb{A}}

\underbrace{\begin{bmatrix}
\Delta NO_{t} \\
CA_{t}
\end{bmatrix}}_{\pmb{Z}_{t}}
+
\underbrace{\begin{bmatrix}
u_{1,t+1} \\
u_{2,t+1}
\end{bmatrix}}_{\pmb{u}_{t+1}}
$$

$$
\pmb{Z}_{t+1}=\pmb{A}\pmb{Z}_{t}+\pmb{u}_{t+1}
$$

$$
\begin{cases}
\Delta NO_{t+1}=a_{11}\Delta NO_{t}+a_{12}CA_{t}+u_{1,t+1} \\
CA_{t+1}=a_{21}\Delta NO_t+a_{22}CA_t+u_{2,t+1}
\end{cases}
$$

Note: using time series data of CA & NO, we can estimate $\pmb{A}$ 

**Using the first row of VAR:**
$$
\Delta NO_{t+1}=
\begin{bmatrix}
1 & 0
\end{bmatrix}\pmb{A}\pmb{Z}_{t}+u_{1,t+1}
$$
Iterate forward $k$ period and take expectation
$$
E_t[\Delta NO_{t+k}]=
\begin{bmatrix}
1 & 0
\end{bmatrix}\pmb{A}^k\pmb{Z}_{t}
$$

$$
\begin{align}
\widehat{CA}_t&=-\sum_{k=1}^{\infty}\frac{\pmb{E}_t(\Delta NO_{t+k})}{(1+r)^k} \\
&=-\begin{bmatrix}
1 & 0
\end{bmatrix}
\sum_{k=1}^{\infty}\left(\frac{1}{1+r}\right)^{k}
\pmb{A}^k\pmb{Z}_{t} \\
&\frac{1}{1+r}|\pmb{A}|<1\quad\text{and}\quad\pmb{A}\text{ is invertible} \\
&=-
\begin{bmatrix}
\dfrac{1}{1+r} & 0
\end{bmatrix}\pmb{A}
\left[\pmb{I}_2-\left(\frac{1}{1+r}\right)\pmb{A}\right]^{-1}\pmb{Z}_t \\
&=\pmb{B}\pmb{Z}_t

\end{align}
$$

**Using the second row of VAR:**
$$
CA_{t+1}=
\begin{bmatrix}
0 & 1
\end{bmatrix}\pmb{A}\pmb{Z}_{t}+u_{2,t+1}
$$

$$
CA_t=
\begin{bmatrix}
0 & 1
\end{bmatrix}\pmb{Z}_t
$$

Wald test:
$$
-
\begin{bmatrix}
\dfrac{1}{1+r} & 0
\end{bmatrix}\pmb{A}
\left[\pmb{I}_2-\left(\frac{1}{1+r}\right)\pmb{A}\right]^{-1}=
\begin{bmatrix}
0 & 1
\end{bmatrix}
$$

Why may it be important to include the current account in the forecasting equation for $\Delta NO_{t-k}$?

Present value relation itself is a powerful statement: the current account is a sufficient statistics for people's expectation of future outputs. So, if we include past values of CA into the info-set in our output forecast equation, we may actually do very well without having to proxy the infinite complexity of people's info set.

### 1(b)

$$
\Delta NO_t=\lambda\Delta P_t+(1-\lambda)\Delta T_t\quad\text{where $0\leq\lambda\leq1$}
$$

$$
\begin{cases}
\Delta P_t=\alpha\Delta P_{t-1}+\eta_t & \alpha\in(0,1) \\
\Delta T_t=(\rho-1)T_t+\nu_t & \rho\in(0,1)
\end{cases}
$$

$$
\frac{\partial E_t[\Delta P_{t+k}]}{\partial \eta_t}=\alpha^{k}
$$

$$
\frac{\partial E_t[\Delta T_{t+k}]}{\partial\nu_t}=\frac{\partial E_t[T_{t+k}-T_{t+k-1}]}{\partial\nu_t}=
\rho^k-\rho^{k-1}=(\rho-1)\rho^{k-1}
$$

$$
\begin{align}
CA_t&=-\sum_{k=1}^{\infty}\frac{\pmb{E}_t(\Delta NO_{t+k})}{(1+r)^k} \\
&=-\sum_{k=1}^{\infty}\frac{\lambda E_t[\Delta P_{t+k}]+(1-\lambda)E_t[\Delta T_{t+k}]}{(1+r)^k}
\end{align}
$$

$$
\begin{align}
\frac{\partial CA_t}{\partial\eta_t}&=-\sum_{k=1}^{\infty}\frac{1}{(1+r)^k}
\left(
\lambda\underbrace{\frac{\partial E_t[\Delta P_{t+k}]}{\partial\eta_t}}_{\alpha^k}
+
(1-\lambda)\underbrace{\frac{\partial E_t[\Delta T_{t+k}]}{\partial\eta_t}}_{0}
\right) \\
&=-\lambda\sum_{k=1}^{\infty}\left(\frac{\alpha}{1+r} \right)^k \\
&=-\frac{\lambda\alpha}{1+r-\alpha}
\quad\text{Negative}
\end{align}
$$

Consistent with the permanent income hypothesis.
$$
\begin{align}
\frac{\partial CA_t}{\partial\nu_t}&=-\sum_{k=1}^{\infty}\frac{1}{(1+r)^k}
\left(
\lambda\underbrace{\frac{\partial E_t[\Delta P_{t+k}]}{\partial\nu_t}}_{0}
+
(1-\lambda)\underbrace{\frac{\partial E_t[\Delta T_{t+k}]}{\partial\nu_t}}_{(\rho-1)\rho^{k-1}}
\right) \\
&=-\frac{(1-\lambda)(\rho-1)}{\rho}\sum_{k=1}^{\infty}\left(\frac{\rho}{1+r} \right)^k \\
&=\frac{(1-\lambda)(1-\rho)}{1+r-\rho}
\quad\text{Positive}
\end{align}
$$

### 1(c)

We can parametrize this using $\lambda^E>\lambda^D$ 

Emerging economies will have a higher countercyclical CA.
$$
\begin{cases}
\dfrac{\partial CA^E}{\partial\eta_t}<\dfrac{\partial CA^D}{\partial\eta_t} \\
\dfrac{\partial CA^E}{\partial\nu_t}<\dfrac{\partial CA^D}{\partial\nu}

\end{cases}
$$
Or
$$
\begin{cases}
\alpha^E>\alpha^D \\
\rho^E>\rho^D
\end{cases}
$$
CA is more countercyclical if shock has larger permanent component.

Note:

* Developed economies will have a procyclical CA (larger transitory component).
  * Positive shocks lead to an increase in consumption that is less than 1 to 1 and the CA is increasing.
* Emerging market economies will have a higher countercyclical CA (larger permanent component).
  * Positive shocks today induce consumption to increase by more than 1 to 1 such that the country runs a CA deficit.

