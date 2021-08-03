# Problem Set 12

## 1

**Notation:**

* $A$ : foreign assets.
* $L$ : foreign liabilities.
* $NA$ : net foreign asset position.
* $r^{NA}$ : the return on the country's net foreign asset position.
* $r^A$ : the return on the asset side of the country's balance sheet.
* $r^L$ : the return on the liability side of the country's balance sheet.
* $NX$ : the country's net exports.

$$
NA_t=A_t-L_t
$$

$$
NA_{t+1}=(1+r_{t+1}^{NA})NA_t+NX_{t+1}
$$

$$
r_{t+1}^{NA}=\frac{r_{t+1}^{A}A_t-r_{t+1}^LL_t}{NA_t}
$$

### 1(a)

$$
\text{country 1}=
\begin{cases}
A^1=100 \\
L^1=100 \\
GDP^1=100
\end{cases}
\quad
\text{country 2}=
\begin{cases}
A^2=1000 \\
L^2=1000 \\
GDP^2=100
\end{cases}
$$

Both counties hold all their

* liabilities denominated in domestic currency.
* foreign assets denominated in foreign currency.

Domestic currency appreciates 10%,
$$
\text{1 CHF for 1 USD}\implies\text{0.9 CHF for 1 USD}
$$
Country 1:
$$
\frac{NA^1}{GDP^1}=\frac{A^1-L^1}{GDP^1}=
\frac{100\mathrm{USD}\times0.9\frac{\mathrm{CHF}}{\mathrm{USD}}-100\mathrm{CHF}}
{100}=-10\%
$$
Country 2:
$$
\frac{NA^2}{GDP^2}=\frac{A^2-L^2}{GDP^2}=
\frac{1000\mathrm{CHF}\times0.9\frac{\mathrm{USD}}{\mathrm{CHF}}-1000\mathrm{USD}}
{100}=-100\%
$$



### 1(b)

Assuming $\Delta NA_t=CA_t$ , then a time series of net foreign assets $(NA)$ can be obtained by accumulating historical current accounts $(CA)$. However, this is a bad assumption of $NA$ since true $NA$ are larger than the sum of $CA$ . This is because the cumulative $CA$ treat the value of foreign assets and liabilities at historical prices while the price of securities changes over time.

The correct computation of foreign asset should consider such variation effects:
$$
\Delta NA_t=CA_t+VA_t
$$


### 1(c)

$$
\textbf{Basic Pricing Equation:}\quad
\pmb{E}\left(
M_{t+1}(1+r_{t+1}^k)
\right)=1
$$

$$
NA_{t+1}=(1+r_{t+1}^{NA})NA_t+NX_{t+1}
$$

Plug $\begin{cases}NA_t=A_t-L_t \\
r_{t+1}^{NA}NA_t=r_{t+1}^{A}A_t-r_{t+1}^LL_t
\end{cases}$ into above equation:
$$
NA_{t+1}=(1+r_{t+1}^{A})A_t-(1+r_{t+1}^{L})L_t+NX_{t+1}
$$
Multiply by $M_{t+1}$ and take expectations:
$$
\pmb{E}_t(M_{t+1}NA_{t+1})=A_t\pmb{E}_t\left(M_{t+1}(1+r_{t+1}^A)\right)-
L_t\pmb{E}_t\left(M_{t+1}(1+r_{t+1}^L)\right)+\pmb{E}_t(M_{t+1}NX_{t+1})
$$
From **BPE**, we know that:
$$
\pmb{E}\left(
M_{t+1}(1+r_{t+1}^A)
\right)=\pmb{E}\left(
M_{t+1}(1+r_{t+1}^L)
\right)=
\pmb{E}\left(
M_{t+1}(1+r_{t+1}^f)
\right)=1
$$

$$
\pmb{E}_t(M_{t+1}NA_{t+1})=
\underbrace{A_t-L_t}_{NA_t}
+\pmb{E}_t(M_{t+1}NX_{t+1})
$$

$$
\begin{align}
\pmb{E}_t(M_{t+1}NA_{t+1})&=NA_t+\pmb{E}_t(M_{t+1}NX_{t+1}) \\
\pmb{E}_t(M_{t+1})\pmb{E}_t(NA_{t+1})+Cov(M_{t+1}, NA_{t+1})
&=NA_t+\pmb{E}_t(M_{t+1})\pmb{E}_t(NX_{t+1})+Cov(M_{t+1}, NX_{t+1}) \\
\pmb{E}_t(M_{t+1})\pmb{E}(NA_{t+1})&=NA_t+\pmb{E}_t(M_{t+1})\pmb{E}_t(NX_{t+1})+
Cov(M_{t+1}, NX_{t+1}-NA_{t+1}) \\
\pmb{E}_t(NA_{t+1})&=\frac{NA_t}{\pmb{E}_t(M_{t+1})}+\pmb{E}_t(NX_{t+1})+
\frac{Cov(M_{t+1}, NX_{t+1}-NA_{t+1})}{\pmb{E}_t(M_{t+1})}
\end{align}
$$

Note:
$$
NA_{t+1}=(1+r_{t+1}^{NA})NA_t+NX_{t+1}\implies
NX_{t+1}-NA_{t+1}=-(1+r_{t+1}^{NA})NA_t
$$

$$
\pmb{E}_t(M_{t+1})=\frac{1}{1+r_t^f}
$$

$$
\begin{align}
\pmb{E}_t(NA_{t+1})&=\frac{NA_t}{\pmb{E}_t(M_{t+1})}+\pmb{E}_t(NX_{t+1})+
\frac{Cov(M_{t+1}, NX_{t+1}-NA_{t+1})}{\pmb{E}_t(M_{t+1})} \\
\pmb{E}_t(NA_{t+1})&=(1+r_t^f)NA_t+\pmb{E}_t(NX_{t+1})-
\frac{Cov\left(M_{t+1}, (1+r_{t+1}^{NA})NA_t\right)}{\pmb{E}_t(M_{t+1})} \\
\pmb{E}_t(\Delta NA_{t+1})&=r_t^fNA_t+\pmb{E}_t(NX_{t+1})-
\frac{Cov\left(M_{t+1}, (1+r_{t+1}^{NA})NA_t\right)}{\pmb{E}_t(M_{t+1})}
\end{align}
$$

$$
\underbrace{\pmb{E}_t(\Delta NA_{t+1})}_\text{expected changes in net foreign assets}
=
\underbrace{r_t^fNA_t}_\text{risk-free rate earned on net foreign assets}
+
\underbrace{\pmb{E}_t(NX_{t+1})}_\text{expected net exports}
-
\frac{Cov\left(M_{t+1}, (1+r_{t+1}^{NA})NA_t\right)}{\pmb{E}_t(M_{t+1})}
$$

For the US, foreign assets returns are high when the global economy is booming and low in a crisis (because money flows to safe haven during crisis), hence the covariance term is smaller than zero. Net foreign assets for US grow more strongly than if they were invested in safe assets because of the hedging role the US plays for the rest of the world. Such growth is referred to as "privilege".  

