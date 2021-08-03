# Problem Set 7

## <u>Exercise 1:</u> Investment in the PVMCA

### 1(a)

$$
\begin{align}
& \max_{C_{t+s},B_{t+s+1},K_{t+s+1}} && U_t=
E_t\left[\sum_{s=0}^{\infty}\beta^su(C_{t+s}) \right] \\
& \text{s.t.} && C_{t+s}=(1+r)B_{t+s}-B_{t+s+1}+Y_{t+s}-I_{t+s}-G_{t+s} \\
& \text{with} &&
\begin{cases}
Y_{t+s}=A_{t+s}F(K_{t+s}) \\
I_{t+s}=\Delta K_{t+s}=K_{t+s+1}-K_{t+s}
\end{cases}
\end{align}
$$

$$
\underset{B_{t+s+1},K_{t+s+1}}\max\quad 
E_t\left[\sum_{s=0}^{\infty}\beta^su((1+r)B_{t+s}-B_{t+s+1}+
A_{t+s}F(K_{t+s})-(K_{t+s+1}-K_{t+s})-G_{t+s}) \right]
$$

**FOC** w.r.t $B_{t+s+1}$ 
$$
\begin{gather}
\frac{\partial U_t}{\partial B_{t+s+1}}=
E_t[\beta^su'(C_{t+s})\cdot(-1)+\beta^{s+1}u'(C_{t+s+1})(1+r)]=0 \\
E_t[u'(C_{t+s})]=E_t[\beta u'(C_{t+s+1})(1+r)]
\end{gather}
$$
For $s=0$ 
$$
u'(C_{t})=\beta(1+r)E_t[u'(C_{t+1})]
$$
**FOC** w.r.t $K_{t+s+1}$ 
$$
\begin{gather}
\frac{\partial U_t}{\partial K_{t+s+1}}=
E_t[\beta^su'(C_{t+s})\cdot(-1)+
\beta^{s+1}u'(C_{t+s+1})(1+A_{t+s+1}F'(K_{t+s+1}))]=0 \\
E_t[u'(C_{t+s})]=E_t[\beta u'(C_{t+s+1})(1+A_{t+s+1}F'(K_{t+s+1}))]
\end{gather}
$$
For $s=0$ 
$$
u'(C_{t})=\beta E_t[u'(C_{t+1})(1+A_{t+1}F'(K_{t+1}))]
$$

$$
\beta(1+r)=1\implies u'(C_t)=E_t[u'(C_{t+1})]
$$

$$
\begin{cases}
u'(C_{t})=\beta(1+r)E_t[u'(C_{t+1})] \\
u'(C_{t})=\beta E_t[u'(C_{t+1})(1+A_{t+1}F'(K_{t+1}))] 
\end{cases}
$$

$$
\begin{align}
(1+r)E_t[u'(C_{t+1})]&=E_t[u'(C_{t+1})]+E_t[u'(C_{t+1})A_{t+1}F'(K_{t+1}))] \\
r\cdot E_t[u'(C_{t+1})]&=E_t[u'(C_{t+1})A_{t+1}F'(K_{t+1}))] \\
r\cdot u'(C_{t})&=E_t[u'(C_{t+1})A_{t+1}F'(K_{t+1})] \\
r&=E_t[\frac{u'(C_{t+1})}{u'(C_{t})}\cdot A_{t+1}F'(K_{t+1}) ] \\
r&=E_t[\frac{u'(C_{t+1})}{u'(C_{t})}]\cdot E_t[A_{t+1}F'(K_{t+1}) ]+
Cov\left(\frac{u'(C_{t+1})}{u'(C_{t})}, A_{t+1}F'(K_{t+1})\right) \\
r&=E_t[A_{t+1}F'(K_{t+1}) ]+
Cov\left(\frac{u'(C_{t+1})}{u'(C_{t})}, A_{t+1}F'(K_{t+1})\right) \\
E_t[A_{t+1}F'(K_{t+1})]&=r-
Cov\left(\frac{u'(C_{t+1})}{u'(C_{t})}, A_{t+1}F'(K_{t+1})\right)
\end{align}
$$

$$
E_t[\underbrace{A_{t+1}F'(K_{t+1})}_\text{return on capital}]=r-
\underbrace{Cov\left(\frac{u'(C_{t+1})}{u'(C_{t})}, A_{t+1}F'(K_{t+1})\right)}_
\text{negative}
$$

The expected return on capital differs from the risk-free interest rate $r$ by a risk premium which is captured by the covariance term. Generally this covariance term will be negative. The return on capital investment will be low exactly when marginal utility growth is high (or when consumption is low).



### 1(b)

$$
A_{t+1}=A_t+\epsilon_{t+1} \implies E_t[A_{t+1}]=A_t
$$

#### (i)

* At date $t$ , given $E_t[A_{t+1}]=A_t$ , the optimal stock of capital $K_{t+1}=K_t+I_t$ is set such that $r=E_t[A_{t+1}F'(K_{t+1})]$ 
* At date $t+1$ , if $A_{t+1}$ differs from its expected value, then $K_{t+1}$ is not at its optimal level. Given $E_{t+1}[A_{t+2}]=A_{t+1}$ , the agent invests such that $K_{t+2}=K_{t+1}+I_{t+1}$ is optimal. This adjustment of the capital stock generates a predictable change in the next period's output, even if productivity is not expected to change.

#### (ii)

* Global shock, i.e., changes in productivity that affect all countries equally, should not affect the current accounts. If all countries want to adjust their capital stock equally by investing, the interest rate will adjust, but not the cross-section of current accounts.
* However, if only a single country faces a country-specific shock, for example, an increase in $A_t$ , it expects to have higher productivity in the future as well and therefore increase its capital stock by investing more. Given $CA_t=S_t-I_t$ , this lowers its current account.



#### (iii)

Glick & Rogoff (1995) assume that productivity shocks are permanent 
$$
\begin{gather}
\Delta CA_t=(R-1)CA_{t-1}+\gamma_1I_{t-1}+\gamma_2\Delta A_t^c+\gamma_3\Delta A_t^w \\
\Delta I_t=(\beta_1-1)I_{t-1}+\beta_2\Delta A_t^c+\beta_3\Delta A_t^w \\
\begin{cases}
\Delta A^c & \text{a country-specific productivity shock} \\
\Delta A^w & \text{a global productivity shock}
\end{cases}
\end{gather}
$$

* $\gamma_2<0$ . A country-specific increase in productivity should lead to a decline in that country's current account since the country will increase investment.

* $\gamma_3$ is insignificant since global productivity shocks should not affect current accounts.

* $\beta_2>0$ . A country-specific increase in productivity increases that country's investment.

* $\beta_2>\beta_3>0$ . Given a positive global productivity shock, all countries want to increase investment. This rises $r$ which dampens the effect on $\Delta I_t$ .

* $|\gamma_2|>\beta_2$ . In the PVMCA, a permanent rise in productivity not only worsens the current account due to higher investment but also causes consumption to rise by more than gross output. Therefore, current account should react more strongly than investment.
  $$
  \Delta CA_{t+1}=\Delta Y_{t+1}-\Delta C_{t+1}-\Delta I_{t+1}
  $$

### 1(c)

#### (i)

$$
\begin{cases}
C_t=\dfrac{r}{1+r}\left((1+r)B_t+E_t\left[\sum\limits_{s=0}^{\infty}
\frac{NO_{t+s}}{(1+r)^s} \right]\right) \\
C_{t-1}=\dfrac{r}{1+r}\left((1+r)B_{t-1}+E_{t-1}\left[\sum\limits_{s=0}^{\infty}
\frac{NO_{t+s-1}}{(1+r)^s} \right]\right) \\
\end{cases}
$$

$$
\begin{align}
\Delta C_t&=\frac{r}{1+r}\left((1+r)\Delta B_t+ 
E_t\left[\sum_{s=0}^{\infty}\frac{NO_{t+s}}{(1+r)^s} \right]-
E_{t-1}\left[\sum_{s=0}^{\infty}\frac{NO_{t+s-1}}{(1+r)^s} \right]\right) \\
&=\frac{r}{1+r}\left(E_t\left[\sum_{s=0}^{\infty}\frac{NO_{t+s}}{(1+r)^s} \right]-
E_{t-1}\left[\sum_{s=0}^{\infty}\frac{NO_{t+s-1}}{(1+r)^s} \right]\right) \\
&=\frac{r}{1+r}\left(E_t[NO_t]-E_{t-1}[NO_{t-1}]+
E_t\left[\sum_{s=1}^{\infty}\frac{NO_{t+s}}{(1+r)^s} \right]-
E_{t-1}\left[\sum_{s=1}^{\infty}\frac{NO_{t+s-1}}{(1+r)^s} \right]\right) \\
\end{align}
$$

$$
\begin{align}
E_t[NO_t]-E_{t-1}[NO_{t-1}]&=E_t[A_tF(K_t)-I_t]-E_{t-1}[A_{t-1}F(K_{t-1})-I_{t-1}] \\
&=A_tF(K_t)-I_t-A_{t-1}F(K_{t-1})+\underbrace{I_{t-1}}_{0} \\
&=\Delta A_tF(K_t)-I_t
\end{align}
$$

$$
I_{t-1}=0\quad\text{since $K_{t-1}=K_t$, the level of capital stock is optimal}
$$

At date $t-1$ , agents did not expect changes in investment. Thus, $E_{t-1}[I_t]=0$ at date $t$ , they see an increase in productivity: $A_t>A_{t-1}$ , but do not expect any further change in $A$ . Thus: 
$$
\begin{cases}
E_t[A_{t+s}]=A_t & \forall s \\
E_t[I_{t+s}]=0 & \text{for }s>0 \\
E_t[K_{k+s}]=K_{t+1}=K_t+I_t & \text{for }s>0
\end{cases}
$$

$$
\begin{align}
&E_t\left[\sum_{s=1}^{\infty}\frac{NO_{t+s}}{(1+r)^s} \right]-
E_{t-1}\left[\sum_{s=1}^{\infty}\frac{NO_{t+s-1}}{(1+r)^s} \right] \\
=&\sum_{s=1}^{\infty}\frac{E_t[A_{t+s}F(K_{t+s})-I_{t+s}]-
E_{t-1}[A_{t+s-1}F(K_{t+s-1})-I_{t+s-1}]}
{(1+r)^s} \\
=&\sum_{s=1}^{\infty}\frac{E_{t}[A_{t+s}F(K_{t+s})]-
E_{t-1}[A_{t+s-1}F(K_{t+s-1})]}
{(1+r)^s} \\
=&\sum_{s=1}^{\infty}\frac{A_{t}F(K_{t}+I_t)-
A_{t-1}F(K_{t})}
{(1+r)^s} \\
=&(A_{t}F(K_{t}+I_t)-
A_{t-1}F(K_{t}))\sum_{s=1}^{\infty}\left(\frac{1}{1+r}\right)^s \\
=&\frac{1}{r}(A_{t}F(K_{t}+I_t)-
A_{t-1}F(K_{t}))

\end{align}
$$

$$
\Delta C_t=\frac{r}{1+r}\left(\Delta A_tF(K_t)-I_t+\frac{1}{r}(A_{t}F(K_{t}+I_t)-
A_{t-1}F(K_{t})) \right)
$$

#### (ii)

**Recall the first-order Taylor approximation**
$$
f(x)\simeq f(a)+f'(a)(x-a)
$$
**Taylor approximation of the production function at $t$ around $K_t$** 
$$
\begin{align}
A_tF(K_t+I_t)&\simeq A_tF(K_t)+A_tF'(K_t)(K_t+I_t-K_t) \\
&=A_tF(K_t)+A_tF'(K_t)I_t
\end{align}
$$
**Taylor approximation of the production function at $t-1$ around $K_t$** 
$$
\begin{align}
A_{t-1}F(K_t)&\simeq A_{t-1}F(K_{t-1})+A_{t-1}F'(K_{t-1})(K_{t-1}+I_{t-1}-K_{t-1}) \\
&=A_{t-1}F(K_{t-1})+A_{t-1}F'(K_{t-1})\underbrace{I_{t-1}}_{0} \\
&=A_{t-1}F(K_{t-1})
\end{align}
$$

$$
\begin{align}
&A_{t}F(K_{t}+I_t)-A_{t-1}F(K_{t}) \\
=&A_tF(K_t)+A_tF'(K_t)I_t-A_{t-1}F(K_{t-1}) \\
=&\Delta A_tF(K_t)+A_tF'(K_t)I_t
\end{align}
$$

$$
\begin{align}
\Delta C_t&=\frac{r}{1+r}\left(\Delta A_tF(K_t)-I_t+\frac{1}{r}(A_{t}F(K_{t}+I_t)-
A_{t-1}F(K_{t})) \right) \\
&=\frac{r}{1+r}\left(\Delta A_tF(K_t)-I_t+\frac{1}{r}(A_tF(K_t)+A_tF'(K_t)I_t-A_{t-1}F(K_{t-1})) \right) \\
&=\frac{r}{1+r}\left(\Delta A_tF(K_t)-I_t+
\frac{1}{r}(\Delta A_tF(K_t)+A_tF'(K_t)I_t) \right) \\
&=\frac{r}{1+r}\left(\frac{1+r}{r}\Delta A_tF(K_t)
+\frac{I_t}{r}(-r+A_tF'(K_t))\right) \\
&=\Delta A_tF(K_t)+\frac{I_t}{1+r}
\underbrace{(-r+A_tF'(K_t))}_{>0}
\end{align}
$$

$$
-r+A_tF'(K_t)>0\implies\text{the risky return $A_tF'(K_t)$ exceeds the risk-free $r$}
$$

Hence, consumption increases by more than gross output. Given $CA=Y-C-I$ , and given that investment increases as productivity increases, $CA$ declines by more than investment $I$ increases. This is what Glick & Rogoff did not find.