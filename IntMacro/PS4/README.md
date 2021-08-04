# Problem Set 4

## <u>Exercise 1:</u> Production Economy

**A two-period economy with concave production function**
$$
Y_t=A_tK_t^{\alpha}\quad\text{with}\quad 0<\alpha<1
$$

$$
\begin{cases}
Y_t & \text{the ouput level of the numeraire good} \\
K_t & \text{capital stock} \\
A_t & \text{the level of factor productivity in period $t$}
\end{cases}
$$

**They dynamic evolution of capital**
$$
K_{t+1}=K_t+I_t
$$
**The period budget constraint of the representative household is**
$$
C_t+I_t+B_{t+1}=Y_t+B_t(1+r)
$$

### 1(a)

$$
\begin{cases}
B_1=0 & \text{no initial foreign asset} \\
B_3=0 & \text{no foreign assest at the end of period 2}
\end{cases}
$$

$$
\begin{cases}
C_1+I_1+B_2=Y_1+B_1(1+r) \\
C_2+I_2+B_3=Y_2+B_2(1+r)
\end{cases}\implies
\begin{cases}
C_1+I_1+B_2=Y_1 \\
C_2+I_2=Y_2+B_2(1+r)
\end{cases}\implies
\begin{cases}
C_1+B_2=Y_1-I_1 \\
\dfrac{C_2}{1+r}=\dfrac{Y_2-I_2}{1+r}+B_2
\end{cases}
$$

$$
C_1+\frac{C_2}{1+r}=Y_1-I_1+\frac{Y_2-I_2}{1+r}
$$

$$
\underbrace{C_1+\frac{C_2}{1+r}}_\text{present value of consumption}=
\underbrace{Y_1-I_1+\frac{Y_2-I_2}{1+r}}_\text{present value of net output}
$$

### 1(b)

**PPF in closed economy**
$$
NO_2=PPF(NO_1)
$$

$$
\begin{cases}
NO_t=Y_t-I_t \\
C_t=Y_t-I_t
\end{cases}\implies NO_t=C_t
$$

$$
NO_2=PPF(NO_1) \iff C_2=PPF(C_1)
$$

$$
\begin{cases}
C_1=Y_1-I_1 \\
C_2=Y_2-I_2
\end{cases}\implies
\begin{cases}
C_1=A_1K_1^{\alpha}-I_1 \\
C_2=A_2K_2^{\alpha}-I_2
\end{cases}
$$

$$
\begin{align}
K_2&=K_1+I_1 \\
&=K_1+A_1K_1^{\alpha}-C_1
\end{align}
$$

$$
\begin{align}
C_2&=A_2K_2^{\alpha}-I_2 \\
&=A_2K_2^{\alpha}+K_2 \\
&=A_2(K_1+A_1K_1^{\alpha}-C_1)^{\alpha}+K_1+A_1K_1^{\alpha}-C_1 \\
&=PPF(C_1)
\end{align}
$$

$$
\begin{align}
\frac{\mathrm{d}PPF(C_1)}{\mathrm{d}C_1}&=-\alpha A_2(K_1+A_1K_1^{\alpha}-C_1)^{\alpha-1}-1 \\
&=-\alpha A_2K_2^{\alpha-1}-1 \\
&=-F'(K_2)-1<0

\end{align}
$$

$PPF$ is downward sloping
$$
\begin{align}
\frac{\mathrm{d}^2PPF(C_1)}{\mathrm{d}C_1^2}&=\alpha(\alpha-1)A_2(K_1+A_1K_1^{\alpha}-C_1)^{\alpha-2} \\
&=\alpha(\alpha-1)A_2K_2^{\alpha-2} \\
&=F''(K_2)<0
\end{align}
$$
$PPF$ is strictly concave for any $\alpha\in(0,1)$ 

### 1(c)

The profit maximization 
$$
\max_{K_2}\quad A_2K_2^{\alpha}-rK_2
$$
FOC:
$$
\alpha A_2K_2^{\alpha-1}-r=0\implies K_2=\left(\frac{\alpha A_2}{r}\right)^{\frac{1}{1-\alpha}}
$$
The output in period 2
$$
Y_2=A_2K_2^{\alpha}=A_2\left(\frac{\alpha A_2}{r}\right)^{\frac{\alpha}{1-\alpha}}
$$

### 1(d)

$$
I_1=K_2-K_1=\left(\frac{\alpha A_2}{r}\right)^{\frac{1}{1-\alpha}}-K_1
$$

$$
\begin{align}
\frac{\partial I_1}{\partial r}&=
\left(\frac{1}{1-\alpha}\right)
\left(\frac{\alpha A_2}{r}\right)^{\frac{1}{1-\alpha}-1}
\left(-\frac{\alpha A_2}{r^2}\right) \\
&=-\frac{1}{1-\alpha}
\left(\frac{\alpha A_2}{r}\right)^{\frac{1}{1-\alpha}-1}
\frac{\alpha A_2}{r^2}<0 \\
\end{align}
$$

Investment profile function is downward sloping.
$$
\begin{align}
\frac{\partial^2 I_1}{\partial r^2}&=
\frac{3-2\alpha}{(1-\alpha)^2}
\left(\frac{\alpha A_2}{r}\right)^{\frac{1}{1-\alpha}}
\frac{\alpha A_2}{r^3}>0
\end{align}
$$

### 1(e)

$$
\begin{align}
\max_{C_1,C_2}\quad & \log(C_1)+\beta\log(C_2) \\
\textrm{s.t.}\quad & C_1+\frac{C_2}{1+r}=Y_1-I_1+\frac{Y_2-I_2}{1+r}
\end{align}
$$

Lagarangian function
$$
\mathcal{L}=\log(C_1)+\beta \log (C_2)-
\lambda \left(C_1+\frac{C_2}{1+r}-(Y_1-I_1)-\frac{Y_2-I_2}{1+r}\right)
$$
FOC
$$
\begin{cases}
\dfrac{\partial \mathcal{L}}{\partial C_1}= \dfrac{1}{C_1}-\lambda=0 \\
\dfrac{\partial \mathcal{L}}{\partial C_2}=\dfrac{\beta}{C_2}-\dfrac{\lambda}{1+r}=0
\end{cases}
\implies C_2=\beta (1+r)C_1
$$
Plug  $C_2=\beta (1+r)C_1$  into  IBC
$$
\begin{cases}
C_1=\dfrac{1}{1+\beta}\left(Y_1-I_1+\dfrac{Y_2-I_2}{1+r}\right) \\
C_2=\dfrac{\beta}{1+\beta}(1+r)\left(Y_1-I_1+\dfrac{Y_2-I_2}{1+r}\right)
\end{cases}
$$


### 1(f)

$$
\begin{align}
S_1&=Y_1-C_1 \\
&=Y_1-\frac{1}{1+\beta}\left(Y_1-I_1+\frac{Y_2-I_2}{1+r}\right) \\
&=\frac{\beta}{1+\beta}Y_1+\frac{1}{1+\beta}I_1-\frac{1}{1+\beta}\cdot\frac{Y_2-I_2}{1+r} \\
&=\frac{\beta}{1+\beta}A_1K_1^{\alpha}+\frac{1}{1+\beta}I_1-\frac{1}{1+\beta}\cdot\frac{A_2K_2^{\alpha}-I_2}{1+r}
\end{align}
$$

$$
\frac{\partial S_1}{\partial r}=\frac{1}{1+\beta}\cdot\frac{A_2K_2^{\alpha}-I_2}{(1+r)^2}>0
$$

Savings schedule is upward sloping.

### 1(g)

#### (i)

**Investment schedule**
$$
I_1=K_2-K_1=\left(\frac{\alpha A_2}{r}\right)^{\frac{1}{1-\alpha}}-K_1
$$

$$
\frac{\partial I_1}{\partial A_1}=0\quad\text{$I_1$ is independent of $A_1$}
$$

#### (ii)

**Savings schedule**
$$
S_1=\frac{\beta}{1+\beta}A_1K_1^{\alpha}+\frac{1}{1+\beta}I_1-\frac{1}{1+\beta}\cdot\frac{A_2K_2^{\alpha}-I_2}{1+r}
$$

$$
\frac{\partial S_1}{\partial A_1}=\frac{\beta}{1+\beta}K_1^{\alpha}
$$

$$
A_1 \uparrow \implies Y_1 \uparrow \implies C_1 \uparrow 
(\Delta Y_1 > \Delta C_1 \text{ smooth consumption}) \implies S_1 \uparrow
$$



## <u>Exercise 2:</u> Open Economy with Production - Two-Country Model

$$
\text{lifetime utility}=
\begin{cases}
U(C_1,C_2)=u(C_1)+\beta u(C_2) & \text{domestic country} \\
U(C_1^*,C_2^*)=u(C_1^*)+\beta u(C_2^*) & \text{foreign country}
\end{cases}
$$

$$
\text{where}\quad u(C_t)=\frac{C_t^{1-\frac{1}{\sigma}}}{1-\frac{1}{\sigma}}
$$

$$
\text{production function}=
\begin{cases}
Y_t=A_tF(K_t)=A_tK_t^{\alpha} & \text{domestric country} \\
Y_t^*=A_t^*F(K_t^*)=A_t^*(K_t^*)^{\alpha} & \text{foreign country}
\end{cases}\quad\text{where}\quad\alpha\in(0,1)
$$

$$
\text{capital accumnulation}=
\begin{cases}
K_{t+1}=K_t+I_t & \text{domestic country} \\
K_{t+1}^*=K_t^*+I_t^* & \text{foreign country}
\end{cases}
$$

**Note:**

* There is no capital depreciation.
* There is no initial holdings of foreign assets

$$
\text{household budget constraint}=
\begin{cases}
C_t+I_t+B_{t+1}=Y_t+B_t(1+r) & \text{domestic country} \\
C_t^*+I_1^*+B_{t+1}^*=Y_t^*+B_t^*(1+r) & \text{foreign country}
\end{cases}
$$

$$
\text{aggregate saving}=
\begin{cases}
S_t=Y_t-C_t & \text{domestic country} \\
S_t^*=Y_t^*-C_t^* & \text{foreign country}
\end{cases}
$$

### 2(a)

**Production**
$$
\begin{cases}
NO_1=Y_1-I_1 \\
NO_2=Y_2-I_2
\end{cases}
\implies
\begin{cases}
NO_1=A_1K_1^\alpha-I_1 \\
NO_2=A_2K_2^\alpha-I_2
\end{cases}
\implies
\begin{cases}
NO_1=A_1K_1^\alpha-I_1 \\
NO_2=A_2K_2^\alpha+K_2
\end{cases}
\implies
\begin{cases}
NO_1=A_1K_1^\alpha-I_1 \\
NO_2=A_2K_2^\alpha+K_1+I_1
\end{cases}
$$

$$
\begin{cases}
K_2=K_1+I_1 \\
K_3=K_2+I_2 \\
K_3=0
\end{cases}
\implies
\begin{cases}
K_2=K_1+I_1 \\
K_2=-I_2
\end{cases}
\implies
K_2=K_1+A_1K_1^\alpha-NO_1
$$

$$
\begin{cases}
NO_1=A_1K_1^\alpha-I_1 \\
NO_2=A_2K_2^\alpha+K_1+I_1
\end{cases}
\implies
NO_1+NO_2=A_1K_1^\alpha+A_2K_2^\alpha+K_1
$$

$$
NO_2=A_2(K_1+A_1K_1^\alpha-NO_1)^\alpha+K_1+A_1K_1^\alpha-NO_1
$$

$$
\begin{align}
\frac{\partial NO_2}{\partial NO_1}&=-\alpha A_2(K_1+A_1K_1^\alpha-NO_1)^{\alpha-1}-1 \\
&=-A_2F'(K_2)-1
\end{align}
$$

**Utility**
$$
C_1+\frac{C_2}{1+r}=Y_1-I_1+\frac{Y_2-I_2}{1+r} \implies
C_2=-(1+r)C_1+(1+r)\left(Y_1-I_1+\frac{Y_2-I_2}{1+r} \right)
$$

$$
\frac{\partial C_2}{\partial C_1}=-(1+r)
$$

**In open economy**
$$
\frac{\partial NO_2}{\partial NO_1}=\frac{\partial C_2}{\partial C_1} \implies r=A_2F'(K_2)
$$

$$
\begin{align}
r&=A_2F'(K_2) \\
&=\alpha A_2K_2^{\alpha-1} \\
&=\alpha A_2(K_1+I_1)^{\alpha-1}
\end{align}
$$

$$
r=\alpha A_2(K_1+I_1)^{\alpha-1}\implies(K_1+I_1)^{1-\alpha}=\frac{\alpha A_2}{r}\implies
I_2=\left(\frac{\alpha A_2}{r}\right)^{\frac{1}{1-\alpha}}-K_1
$$

$$
\begin{align}
\frac{\mathrm{d}I_1}{\mathrm{d}r}&=
-\frac{1}{1-\alpha}(\alpha A_2)^{\frac{1}{1-\alpha}}r^{-\frac{1}{1-\alpha}-1}\\
&=-\frac{1}{1-\alpha}\left(\frac{\alpha A_2}{r}\right)^{\frac{1}{1-\alpha}}r^{-1}
<0\\
\frac{\mathrm{d}^2I_1}{\mathrm{d}r^2}&=
\frac{1}{(1-\alpha)^2}\left(\frac{\alpha A_2}{r}\right)^{\frac{1}{1-\alpha}}r^{-2}>0
\end{align}
$$

### 2(b)

$$
S_1=Y_1-C_1=A_1K_1^{\alpha}-C_1
$$

$$
\frac{\mathrm{d}S_1}{\mathrm{d}r}=-\frac{\mathrm{d}C_1}{\mathrm{d}r}
$$

$$
\begin{cases}
C_1+I_1+B_2=Y_1+B_1(1+r) \\
C_2+I_2+B_3=Y_2+B_2(1+r) \\
B_1=0\quad\text{no initial foreign assets} \\
B_3=0\quad\text{no foreign assets at the end of period 2}
\end{cases}\implies
\begin{cases}
C_1+B_2=Y_1-I_1 \\
\dfrac{C_2}{1+r}=\dfrac{Y_2-I_2}{1+r}+B_2
\end{cases}
$$

$$
C_1+\frac{C_2}{1+r}=Y_1-I_1+\frac{Y_2-I_2}{1+r}
$$

$$
C_1+\frac{C_2}{1+r}=NO_1+\frac{NO_2}{1+r}\implies C_2=(1+r)(NO_1-C_1)+NO_2
$$

$$
\begin{align}
C_2&=(1+r)(NO_1-C_1)+NO_2 \\
&=(1+r)(Y_1-I_1-C_1)+Y_2-I_2 \\
&=(1+r)(A_1F(K_1)-I_1-C_1)+A_2F(K_2)+K_2 \\
&=(1+r)(A_1F(K_1)-I_1-C_1)+A_2F(K_1+I_1)+K_1+I_1 \\
&=IBC(C_1|r,A_1,A_2,K_1)
\end{align}
$$

$$
\begin{align}
\frac{\mathrm{d}C_2}{\mathrm{d}r}&=A_1F(K_1)-I_1-C_1-
(1+r)\left(\frac{\mathrm{d}I_1}{\mathrm{d}r}+\frac{\mathrm{d}C_1}{\mathrm{d}r} \right)+
A_2F'(K_2)\frac{\mathrm{d}I_1}{\mathrm{d}r}+\frac{\mathrm{d}I_1}{\mathrm{d}r} \\
\frac{\mathrm{d}C_2}{\mathrm{d}r}&=A_1F(K_1)-I_1-C_1-
(1+r)\left(\frac{\mathrm{d}I_1}{\mathrm{d}r}+\frac{\mathrm{d}C_1}{\mathrm{d}r} \right)+
(1+r)\frac{\mathrm{d}I_1}{\mathrm{d}r} \\
\frac{\mathrm{d}C_2}{\mathrm{d}r}&=A_1F(K_1)-I_1-C_1-
(1+r)\frac{\mathrm{d}C_1}{\mathrm{d}r} \\

\end{align}
$$


$$
\text{Euler equation:}\quad\frac{\beta u'(C_2)}{u'(C_1)}=\frac{1}{1+r}\implies 
u'(C_1)=\beta(1+r)u'(C_2)
$$

$$
\begin{align}
u'(C_1)&=\beta(1+r)u'(IBC(\cdot)) \\
\frac{\mathrm{d}}{\mathrm{d}r}u'(C_1)&=\frac{\mathrm{d}}{\mathrm{d}r}(\beta(1+r)u'(IBC(\cdot))) \\
u''(C_1)\frac{\mathrm{d}C_1}{\mathrm{d}r}&=\beta u'(IBC(\cdot))+
\beta(1+r)u''(IBC(\cdot))\frac{\mathrm{d}IBC(\cdot)}{\mathrm{d}r} \\
u''(C_1)\frac{\mathrm{d}C_1}{\mathrm{d}r}&=\beta u'(C_2)+\beta(1+r)u''(C_2)\frac{\mathrm{d}C_2}{\mathrm{d}r} \\
u''(C_1)\frac{\mathrm{d}C_1}{\mathrm{d}r}&=\beta u'(C_2)+\beta(1+r)u''(C_2)(A_1F(K_1)-I_1-C_1)-
\beta(1+r)^2u''(C_2)\frac{\mathrm{d}C_1}{\mathrm{d}r} \\
(u''(C_1)+\beta(1+r)^2u''(C_2))\frac{\mathrm{d}C_1}{\mathrm{d}r}&=\beta u'(C_2)+\beta(1+r)u''(C_2)(A_1F(K_1)-I_1-C_1) \\
\frac{\mathrm{d}C_1}{\mathrm{d}r}&=\frac{\beta u'(C_2)+\beta(1+r)u''(C_2)(A_1F(K_1)-I_1-C_1)}
{u''(C_1)+\beta(1+r)^2u''(C_2)}

\end{align}
$$

$$
\textbf{Euler euqtaion:}\quad
\frac{\beta u'(C_2)}{u'(C_1)}=\frac{1}{1+r}\implies
\frac{\beta C_2^{-\frac{1}{\sigma}}}{C_1^{-\frac{1}{\sigma}}}=\frac{1}{1+r}\implies
\left(\frac{C_1}{C_2} \right)^{-\frac{1}{\sigma}}=\beta(1+r)
$$

$$
\textbf{isoelastic utility:}\quad u(C_t)=\frac{C_t^{1-\frac{1}{\sigma}}}{1-\frac{1}{\sigma}} \implies
\begin{cases}
u'(C_t)=C_t^{-\frac{1}{\sigma}} \\
u''(C_t)=-\frac{1}{\sigma}C_t^{-\frac{1}{\sigma}-1}
\end{cases}
$$

$$
\begin{align}
\frac{u'(C_2)}{u''(C_2)}&=\frac{C_2^{-\frac{1}{\sigma}}}{-\frac{1}{\sigma}C_2^{-\frac{1}{\sigma}-1}}=
-\sigma C_2 \\
\frac{u''(C_1)}{u''(C_2)}&=
\frac{-\frac{1}{\sigma}C_1^{-\frac{1}{\sigma}-1}}{-\frac{1}{\sigma}C_2^{-\frac{1}{\sigma}-1}}=
\left(\frac{C_1}{C_2} \right)^{-\frac{1}{\sigma}-1}=\beta(1+r)\frac{C_2}{C_1}
\end{align}
$$

$$
\begin{align}
\frac{\mathrm{d}C_1}{\mathrm{d}r}&=\frac{\beta u'(C_2)+\beta(1+r)u''(C_2)(A_1F(K_1)-I_1-C_1)}
{u''(C_1)+\beta(1+r)^2u''(C_2)} \\
&=\frac{\beta\frac{u'(C_2)}{u''(C_2)}+\beta(1+r)(A_1F(K_1)-I_1-C_1)}
{\frac{u''(C_1)}{u''(C_2)}+\beta(1+r)^2} \\
&=\frac{-\beta\sigma C_2+\beta(1+r)(A_1F(K_1)-I_1-C_1)}
{\beta(1+r)\frac{C_2}{C_1}+\beta(1+r)^2} \\
&=\frac{A_1F(K_1)-I_1-C_1-\frac{\sigma C_2}{1+r}}
{\frac{C_2}{C_1}+1+r} \\
&=\frac{CA_1-\frac{\sigma C_2}{1+r}}
{\frac{C_2}{C_1}+1+r} \\
\end{align}
$$

### 2(c)

$$
\begin{align}
\underbrace{Y_1-C_1}_{S_1}+\underbrace{Y_1^*-C_1^*}_{S_1^*}&=I_1+I_1^* \\
S_1+S_1^*&=I_1+I_1^* \\
S_1-I_1&=-(S_1^*-I_1^*) \\
CA_1&=-CA_1^*
\end{align}
$$

