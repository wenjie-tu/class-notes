# Problem Set 3

## <u>**Exercise 1:**</u> Logarithmic Case of Two-Country Endowment Economy

**An open endowment economy**
$$
S_1+S_1^\star=0
$$
**Home country**
$$
\begin{align}
\text{lifetime utility in home country:} \quad & U=\log(C_1)+\beta\log(C_2) \\
\text{intertemporal budget constraint:} \quad & C_1+\frac{C_2}{1+r}=Y_1+\frac{Y_2}{1+r}
\end{align}
$$
**Foreign country**
$$
\begin{align}
\text{lifetime utility in foreign country:} \quad & U^{\star}=\log(C_1^{\star})+\beta^{\star}\log(C_2^{\star}) \\
\text{intertemporal budget constraint:} \quad & C_1^{\star}+\frac{C_2^{\star}}{1+r}=Y_1^{\star}+\frac{Y_2^{\star}}{1+r}
\end{align}
$$
**Solution to the intertemporal optimization problem**
$$
\begin{align}
C_1&=\frac{1}{1+\beta}\left(Y_1+\frac{Y_2}{1+r} \right) \\
C_2&=\frac{\beta}{1+\beta}(1+r)\left(Y_1+\frac{Y_2}{1+r}\right)
\end{align}
$$

### 1(a) 

**Savings schedule**
$$
\begin{align}
S_1&=Y_1-C_1 \\
&=Y_1-\frac{1}{1+\beta}\left(Y_1+\frac{Y_2}{1+r} \right) \\
&=\frac{\beta}{1+\beta}Y_1-\frac{1}{1+\beta}\cdot\frac{Y_2}{1+r}
\end{align}
$$

$$
S_1(r)=\frac{\beta}{1+\beta}Y_1-\frac{1}{1+\beta}\cdot\frac{Y_2}{1+r}
$$

$$
\frac{\partial S_1(r)}{\partial r}=\frac{Y_2}{(1+\beta)(1+r)^2}>0
$$

$r$ : willingness to consume tomorrow。

Three channels through which a change in $r$ can affect $C_1$ :

* *Substitution Effect (SE)* 

  A rise in $r$ makes present consumption more expensive in terms of future consumption. Ceteris paribus, this lead to a decline in $C_1 \rightarrow \frac{1}{(1+r)^\sigma}$   

* *Income Effect (IE)* 

  Given the present value of life time resources, higher $r$ makes $Y_1$ more valuable in terms of consumption tomorrow $C_1 \rightarrow \frac{1}{(1+r)^{-1}}$ 

* *Wealth Effect (WE)* 

  A rise in $r$ decreases the present value of lifetime resources and therefore reduces $C_1$ 

With log utility function, substitution effect and income effect cancel out, and wealth effect dominates. Therefore, a rise in $r$ decreases $C_1$ and increases $S_1$. 

### 1(b)

**World Equilibrium**
$$
\text{world equilibrium conditions}
\begin{cases}
\text{interest rates in both home country and foreign country are the same} \\
S_1+S_1^{\star}=0
\end{cases}
$$
From 1(a), we have
$$
\begin{align}
S_1&=\frac{\beta}{1+\beta}Y_1-\frac{Y_2}{(1+\beta)(1+r)} \\
S_1^{\star}&=\frac{\beta^{\star}}{1+\beta^{\star}}Y_1^{\star}-\frac{Y_2^{\star}}{(1+\beta^{\star})(1+r)}
\end{align}
$$

$$
S_1+S_1^{\star}=0\implies\frac{\beta}{1+\beta}Y_1-\frac{Y_2}{(1+\beta)(1+r)}+
\frac{\beta^{\star}}{1+\beta^{\star}}Y_1^{\star}-\frac{Y_2^{\star}}{(1+\beta^{\star})(1+r)}=0
$$

$$
\begin{align}
\frac{\beta}{1+\beta}Y_1+\frac{\beta^{\star}}{1+\beta^{\star}}Y_1^{\star}&=
\frac{1}{1+r}\left(\frac{Y_2}{1+\beta}+\frac{Y_2^{\star}}{1+\beta^{\star}}\right) \\
1+r&=\frac{\frac{Y_2}{1+\beta}+\frac{Y_2^{\star}}{1+\beta^{\star}}}
{\frac{\beta}{1+\beta}Y_1+\frac{\beta^{\star}}{1+\beta^{\star}}Y_1^{\star}} \\
r&=\frac{\frac{Y_2}{1+\beta}+\frac{Y_2^{\star}}{1+\beta^{\star}}}
{\frac{\beta}{1+\beta}Y_1+\frac{\beta^{\star}}{1+\beta^{\star}}Y_1^{\star}}-1
\end{align}
$$

### 1(c)

**Optimization problem in home country**
$$
\begin{align}
\max_{C_1,C_2}\quad & U=\log(C_1)+\beta\log(C_2) \\
\textrm{s.t.}\quad & C_1+\frac{C_2}{1+r}=Y_1+\frac{Y_2}{1+r}
\end{align}
$$
FOC:
$$
\frac{\beta u'(C_2)}{u'(C_1)}=\frac{\beta C_1}{C_2}=\frac{1}{1+r}
$$
Under the *Autarky* condition, the agent consumes exactly the same amount of endowment in each period
$$
\frac{\beta u'(Y_2)}{u'(Y_1)}=\frac{\beta Y_1}{Y_2}=\frac{1}{1+r^{A}}\implies
Y_2=\beta(1+r^{A})Y_1
$$
Similarly,
$$
Y_2^{\star}=\beta^{\star}(1+r^{A^{\star}})Y_1^{\star}
$$
Plug $\begin{cases}Y_2=\beta(1+r^{A})Y_1 \\ Y_2^{\star}=\beta^{\star}(1+r^{A^{\star}})Y_1^{\star} \end{cases}$ into $1+r=\dfrac{\frac{Y_2}{1+\beta}+\frac{Y_2^{\star}}{1+\beta^{\star}}}
{\frac{\beta}{1+\beta}Y_1+\frac{\beta^{\star}}{1+\beta^{\star}}Y_1^{\star}} $
$$
\begin{align}
1+r&=\frac{\frac{Y_2}{1+\beta}+\frac{Y_2^{\star}}{1+\beta^{\star}}}
{\frac{\beta}{1+\beta}Y_1+\frac{\beta^{\star}}{1+\beta^{\star}}Y_1^{\star}} \\
&=\frac{\frac{\beta}{1+\beta}Y_1(1+r^A)+\frac{\beta^{\star}}{1+\beta^{\star}}Y_1^{\star}(1+r^{A^{\star}})}
{\frac{\beta}{1+\beta}Y_1+\frac{\beta^{\star}}{1+\beta^{\star}}Y_1^{\star}} \\
&=\underbrace{
\frac{\frac{\beta}{1+\beta}Y_1}{\frac{\beta}{1+\beta}Y_1+\frac{\beta^{\star}}{1+\beta^{\star}}Y_1^{\star}}
}_{\alpha}(1+r^A)+
\underbrace{
\frac{\frac{\beta^{\star}}{1+\beta^{\star}}Y_1^{\star}}{\frac{\beta}{1+\beta}Y_1+\frac{\beta^{\star}}{1+\beta^{\star}}Y_1^{\star}}
}_{(1-\alpha)}
(1+r^{A^{\star}}) \\
&=\alpha(1+r^{A})+(1-\alpha)(1+r^{A^{\star}})
\end{align}
$$

$$
1+r=\alpha(1+r^{A})+(1-\alpha)(1+r^{A^{\star}})\implies
r=\alpha r^{A}+(1-\alpha)r^{A^\star}
$$

### 1(e)

#### (i)

$$
\frac{Y_2^{\star}}{Y_1^{\star}}=\beta^{\star}(1+r^{A^{\star}})
$$

Suppose that $Y_1^{\star}$ remains unchanged,
$$
\frac{Y_2^{\star}\uparrow}{Y_1^{\star}}\implies r^{A^{\star}}\uparrow\implies r \uparrow
$$

#### (ii)

$$
C_1=\frac{1}{1+\beta}\left(Y_1+\frac{Y_2}{1+r} \right)\implies
\frac{\partial C_1}{\partial r}=-\frac{Y_2}{(1+\beta)(1+r)^2}
$$

$$
C_2=\frac{\beta}{1+\beta}(1+r)\left(Y_1+\frac{Y_2}{1+r}\right)\implies
\frac{\partial C_2}{\partial r}=\frac{\beta}{1+\beta}\left(Y_1+\frac{Y_2}{1+r}\right)-
\frac{\beta Y_2}{(1+\beta)(1+r)}=\frac{\beta}{1+\beta}Y_1
$$

$$
\begin{cases}
\frac{\partial C_1}{\partial r}=-\frac{Y_2}{(1+\beta)(1+r)^2} \\
\frac{\partial C_2}{\partial r}=\frac{\beta}{1+\beta}Y_1
\end{cases}
$$

$$
\begin{cases}
C_1=\frac{1}{1+\beta}\left(Y_1+\frac{Y_2}{1+r} \right) \\
C_2=\frac{\beta}{1+\beta}(1+r)\left(Y_1+\frac{Y_2}{1+r}\right) \\
Y_2=\beta(1+r^{A})Y_1
\end{cases}
$$

$$
\begin{align}
\frac{\mathrm{d}U}{\mathrm{d}r}&=\frac{\partial U}{\partial C_1}\cdot\frac{\partial C_1}{\partial r}+
\frac{\partial U}{\partial C_2}\cdot\frac{\partial C_2}{\partial r} \\
&=-\frac{1}{C_1}\cdot\frac{Y_2}{(1+\beta)(1+r)^2}+\frac{\beta}{C_2}\cdot\frac{\beta}{1+\beta}Y_1 \\
&=-\frac{1}{Y_1+\frac{Y_2}{1+r}}\cdot\frac{Y_2}{(1+r)^2}+\frac{1}{Y_1+\frac{Y_2}{1+r}}\cdot\frac{\beta Y_1}{1+r} \\
&=\frac{1}{Y_1+\frac{Y_2}{1+r}}\cdot\frac{\beta Y_1(r-r^{A})}{(1+r)^2} \\
&=\frac{\beta}{1+r}\left(\frac{r-r^A}{1+r+\frac{Y_2}{Y_1}} \right) \\
&=\frac{\beta}{1+r}\left(\frac{r-r^A}{1+r+\beta(1+r^{A})} \right)
\end{align}
$$

#### (iii)

From (i), we have known that higher foreign output growth will lead to an increase in world interest rate.

* If $r>r^*$ , the home country is a creditor country and runs a current account surplus. From (ii), we know that an increase in world interest rate in  will lead to a higher utility in home country. In this case, higher foreign output growth is beneficial for the home country.
* If $r<r^*$ , the home country is a debtor country  and runs a current account deficit. From (ii), we know that an increase in world interest rate will lead to a lower utility in home country. In this case, higher foreign output growth is not beneficial for the home country.
