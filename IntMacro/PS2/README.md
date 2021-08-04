# Problem Set 2

## <u>Exercise 1:</u> Basic Model

A small open economy inhabited by a representative household that maximizes a two-period lifetime utility function
$$
U(C_1,C_2)=u(C_1)+\beta u(C_2)
$$
subject to the intertemporal budget constraint
$$
C_1+\frac{C_2}{1+r}=Y_1+\frac{Y_2}{1+r}
$$

### 1(a)

$$
\underbrace{C_1+\frac{C_2}{1+r}}_\text{present value of lifetime consumption}=
\underbrace{Y_1+\frac{Y_2}{1+r}}_\text{present value of lifetime income}
$$

**Intuition:** the present value of consumption in two periods equals the present value of income in two periods.

### 1(b)

The representative household's optimization problem
$$
\begin{align}
\max_{C_1,C_2}\quad & \ln(C_1)+\beta\ln(C_2) \\
\textrm{s.t.}\quad & C_1+\frac{C_2}{1+r}=Y_1+\frac{Y_2}{1+r}
\end{align}
$$

$$
\mathcal{L}=\ln(C_1)+\beta\ln(C_2)-\lambda\left(C_1+\frac{C_2}{1+r}-Y_1-\frac{Y_2}{1+r} \right)
$$

FOCs:
$$
\begin{align}
\frac{\partial\mathcal{L}}{\partial C_1}&=\frac{1}{C_1}-\lambda=0 \\
\frac{\partial\mathcal{L}}{\partial C_2}&=\frac{\beta}{C_2}-\frac{\lambda}{1+r}=0
\end{align}\implies
\beta\frac{C_1}{C_2}=\frac{1}{1+r}
$$
We know that
$$
\overline{W}=Y_1+\frac{Y_2}{1+r}
$$

$$
\text{plug}\quad
\begin{cases}
\beta\frac{C_1}{C_2}=\frac{1}{1+r} \\
\overline{W}=Y_1+\frac{Y_2}{1+r}
\end{cases}\quad\text{into the IBC}\quad
C_1+\frac{C_2}{1+r}=Y_1+\frac{Y_2}{1+r}
$$

We obtain
$$
\begin{align}
C_1&=\frac{1}{1+\beta}\overline{W} \\
C_2&=\frac{\beta}{1+\beta}(1+r)\overline{W}
\end{align}
$$

### 1(c)

Primary current account in the first period
$$
\begin{align}
PCA_1&=Y_1-C_1 \\
&=Y_1-\frac{1}{1+\beta}\overline{W} \\
&=Y_1-\frac{1}{1+\beta}\left(Y_1+\frac{Y_2}{1+r}\right)
\end{align}
$$

$$
\begin{align}
PCA_2&=Y_2-C_2 \\
&=Y_2-\frac{\beta}{1+\beta}(1+r)\overline{W} \\
&=Y_2-\frac{\beta}{1+\beta}(1+r)\left(Y_1+\frac{Y_2}{1+r}\right)
\end{align}
$$

$$
\begin{align}
PCA_1+\frac{PCA_2}{1+r}&=Y_1-\frac{1}{1+\beta}\left(Y_1+\frac{Y_2}{1+r}\right)+
\frac{Y_2}{1+r}-\frac{\beta}{1+\beta}\left(Y_1+\frac{Y_2}{1+r}\right)=0
\end{align}
$$

$$
PCA_1=-\frac{PCA_2}{1+r}
$$

### 1(d)

$$
\begin{align}
PCA_1&=Y_1-\frac{1}{1+\beta}\left(Y_1+\frac{Y_2}{1+r}\right) \\
&=\frac{\beta}{1+\beta}Y_1-\frac{1}{(1+\beta)(1+r)}Y_2
\end{align}
$$

Take the partial derivative of $CA_1$ with respect to $Y_1$ 
$$
\frac{\partial PCA_1}{\partial Y_1}=\frac{\beta}{1+\beta}\in(0,1)
$$
The primary current account today will react in the same direction as the income changes.

### 1(e)

From 1(b), we derived
$$
\beta\frac{C_1}{C_2}=\frac{1}{1+r}
$$

$$
\begin{cases}
\beta\frac{C_1}{C_2}=\frac{1}{1+r} \\
\beta=\frac{1}{1+r}
\end{cases}\implies
C_1=C_2
$$

This implies complete consumption smoothing.

If $\beta>\frac{1}{1+r}$ ,
$$
\begin{cases}
\beta\frac{C_1}{C_2}=\frac{1}{1+r} \\
\beta>\frac{1}{1+r}
\end{cases}\implies
C_1<C_2
$$
$\beta$ measures how patient the agent is.

## <u>Exercise 2:</u> Elasticity of Intertemporal Substitution (EIS)

### 2(a)

$$
U=U(C_1,C_2)=u(C_1)+\beta u(C_2)
$$

$$
\begin{cases}
U_1=\dfrac{\partial U(C_1,C_2)}{\partial C_1}=u'(C_1) \\
U_2=\dfrac{\partial U(C_1,C_2)}{\partial C_2}=\beta u'(C_2)
\end{cases}
$$

The inverse of the curvature of the utility function
$$
\begin{align}
\sigma(C)&=-\frac{d\left(\frac{C_2}{C_1}\right)/\frac{C_2}{C_1}}{d\left(\frac{U_2}{U_1} \right)/\frac{U_2}{U_1}}
=-\frac{d\log\left(\frac{C_2}{C_1}\right)}{d\log\left(\frac{U_2}{U_1} \right)}
=-\frac{d\log\left(\frac{C_2}{C_1}\right)}{d\log\left(\frac{\beta u'(C_2)}{u'(C_1)} \right)}
\end{align}
$$
Elasticity of Intertemporal Substitution

Assumptions:

* The utility function is homothetic
* The utility function is time separable
* The change only comes from $C_2$ while $C_1$ remains the same (consider $C_1$ as a constant)

$$
\begin{align}
\sigma(C_2)&=-\frac{d\left(\frac{C_2}{C_1}\right)/\frac{C_2}{C_1}}{d\left(\frac{U_2}{U_1} \right)/\frac{U_2}{U_1}} \\
&=-\frac{dC_2/C_2}{dU_2/U_2} \\
&=-\frac{dC_2}{dU_2}\cdot\frac{U_2}{C_2} \\
&=-\frac{1}{\beta u''(C_2)}\cdot\frac{\beta u'(C_2)}{C_2} \\
&=-\frac{u'(C_2)}{C_2\cdot u''(C_2)}
\end{align}
$$

$$
\sigma(C)=\sigma=-\frac{u'(C)}{C\cdot u''(C)}
$$

Relative Risk Aversion (RRA)
$$
\begin{cases}
R(c) & \text{Relative risk aversion} \\
A(c) & \text{Absolute risk aversion}
\end{cases}
$$

$$
R(c)=cA(c)=-\frac{C\cdot u''(C)}{u'(C)}
$$

### 2(b)

$$
U(C_1,C_2)=u(C_1)+\beta u(C_2)
$$

$$
u(C_t)=
\begin{cases}
\frac{C_t^{1-\rho}-1}{1-\rho} & \rho\neq 1 \\
\ln(C_t) & \rho=1
\end{cases}
$$

$$
u'(C_t)=
\begin{cases}
C_t^{-\rho} & \rho\neq 1 \\
(C_t)^{-1} & \rho=1
\end{cases}\implies
u'(C_t)=(C_t)^{-\rho}\quad\forall\rho
$$

$$
u''(C_t)=-\rho(C_t)^{-\rho-1}
$$

$$
\sigma(C_t)=-\frac{u'(C_t)}{C_t\cdot u''(C_t)}=-\frac{(C_t)^{-\rho}}{-C_t\cdot\rho(C_t)^{-\rho-1}}=\frac{1}{\rho}
$$

### 2(c)

Households are utility maximizing:
$$
\begin{align}
\max_{C_1,C_2}\quad & u(C_1)+\beta u(C_2) \\
\textrm{s.t.}\quad & C_1+\frac{C_2}{1+r}=Y_1+\frac{Y_2}{1+r}
\end{align}
$$

$$
\begin{align}
\beta\frac{u'(C_2)}{u'(C_1)}&=\frac{1}{1+r} \\
\ln(\beta)+\ln(u'(C_2))-\ln(u'(C_1))&=-\ln(1+r) \\
d\left(\ln(\beta)+\ln(u'(C_2))-\ln(u'(C_1))\right)&=-d\left(\ln(1+r)\right) \\
\frac{u''(C_2)}{u'(C_2)}dC_2-\frac{u''(C_1)}{u'(C_1)}dC_1&=-d\left(\ln(1+r)\right) \\
-\frac{1}{\sigma}\cdot\frac{dC_2}{C_2}+\frac{1}{\sigma}\cdot\frac{dC_1}{C_1}&=-d\left(\ln(1+r)\right) \\
\frac{dC_2}{C_2}-\frac{dC_1}{C_1}&=\sigma\cdot d\left(\ln(1+r)\right) \\
d\ln(C_2)-d\ln(C_1)&=\sigma\cdot d\left(\ln(1+r)\right) \\
d\ln\left(\frac{C_2}{C_1} \right)&=\sigma\cdot d\left(\ln(1+r)\right) \\
d\ln\left(\frac{C_2-C_1}{C_1}+1 \right)&=\sigma\cdot d\left(\ln(1+r)\right)
\end{align}
$$

The EIS gives the percentage change in consumption over time for one percentage change in $r$ .

### 2(d)

Utility discount rate