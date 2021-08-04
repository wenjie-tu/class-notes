# Problem Set 11

## <u>**Exercise 1:**</u> Market Completeness and Risk Sharing

### 1(a)

$$
\begin{cases}
\mathcal{S}=2 \\
\rho=1 \\
\beta=0.9
\end{cases}
\quad
\begin{cases}
\pi(1)=\dfrac{1}{2} \\
\pi(2)=\dfrac{1}{2}
\end{cases} 
\quad
\begin{cases}
Y_1=1 \\
Y_1^{\star}=1
\end{cases}
\quad
\begin{cases}
Y_2(1)=1 \\
Y_2^{\star}(1)=1
\end{cases}
\quad
\begin{cases}
Y_2(2)=\dfrac{3}{2} \\
Y_2^{\star}(2)=\dfrac{1}{2}
\end{cases}
$$

#### (i)

$$
\left(
\frac{Y_2^W(s)}{Y_2^W(s')}
\right)^{-\rho}
\frac{\pi(s)}{\pi(s')}=
\frac{p(s)}{p(s')}
$$

$$
\begin{align}
Y_2^W(1)&=Y_2(1)+Y_2^{\star}(1)=1+1=2 \\
Y_2^W(2)&=Y_2(2)+Y_2^{\star}(2)=\frac{3}{2}+\frac{1}{2}=2
\end{align}
$$

$$
\begin{align}
\frac{p(1)}{p(2)}&=
\left(
\frac{Y_2^W(1)}{Y_2^W(2)}
\right)^{-1}
\frac{\pi(1)}{\pi(2)}=1
\end{align}
$$

$$
\text{From the lecture:}\quad
\sum_{s=1}^{\mathcal{S}}p(s)=1 \implies
p(1)+p(2)=1
$$

$$
\begin{cases}
p(1)=p(2) \\
p(1)+p(2)=1
\end{cases}\implies
\begin{cases}
p(1)=\frac{1}{2} \\
p(2)=\frac{1}{2}
\end{cases}
$$

#### (ii)

**Euler equation:**
$$
\beta\pi(s)\left(\frac{C_1}{C_2(s)} \right)^{\rho}=\frac{p(s)}{1+r}
$$
From PS10:
$$
Y_1^W=Y_1+Y_1^{\star}=1+1=2
$$

$$
\beta\pi(s)\left(\frac{C_1}{C_2(s)} \right)^{\rho}=\frac{p(s)}{1+r}
\implies
\beta\pi(s)\left(\frac{Y_1^W}{Y_2^W(s)} \right)^{\rho}=
\frac{p(s)}{1+r}
$$

$$
\begin{align}
\beta\pi(1)\left(\frac{Y_1^W}{Y_2^W(1)} \right)^{\rho}&=\frac{p(1)}{1+r} \\
0.9\times\frac{1}{2}\left(\frac{2}{2} \right)^{1}&=\frac{\frac{1}{2}}{1+r} \\
r&=\frac{1}{9}
\end{align}
$$

#### (iii)

$$
\begin{align}
CA_1&=\frac{\beta}{1+\beta}Y_1-\frac{1}{1+\beta}
\left[
\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r}
\right] \\
&=\frac{0.9}{1+0.9}\times1-\frac{1}{1+0.9}
\left[
\frac{\frac{1}{2}\times1+\frac{1}{2}\times\frac{3}{2}}{1+\frac{1}{9}}
\right] \\
&=-\frac{9}{76}\quad (-0.1184)
\end{align}
$$

Home country is relatively richer than Foreign country in period 2, hence it will run a current deficit by selling A.D. securities.

#### (iv)

$$
\begin{cases}
C_1=Y_1-CA_1=1-(-0.1184)=1.1184 \\
C_1^{\star}=Y_1^{\star}+CA_1=1-0.1184=0.8816
\end{cases}
$$

**Euler equation:**
$$
\beta\pi(s)\left(\frac{C_1}{C_2(s)} \right)^{\rho}=\frac{p(s)}{1+r}\iff
C_2(s)=\beta\pi(s)\frac{1+r}{p(s)}C_1
$$

$$
\begin{align}
C_2(s)&=\beta\pi(s)\frac{1+r}{p(s)}C_1=
0.9\times\frac{1}{2}\times\frac{1+\frac{1}{9}}{\frac{1}{2}}\times 1.1184=1.1184\quad\forall s \\
C_2^{\star}(s)&=\beta\pi(s)\frac{1+r}{p(s)}C_1^{\star}=
0.9\times\frac{1}{2}\times\frac{1+\frac{1}{9}}{\frac{1}{2}}\times 0.8816=0.8816\quad\forall s
\end{align}
$$

If prices are actuarially fair (which was the case since $Y_2^W(1)=Y_2^W(2)$) , agents fully insure themselves. 

#### (v)

$$
\tilde{p}(s)=
\frac{p(s)}{1+r}\implies
\begin{cases}
\tilde{p}(1)=0.45 \\
\tilde{p}(2)=0.45
\end{cases}
$$

$$
P^k=\pmb{E}(MX^k)=\pmb{E}(M)\pmb{E}(X^k)+Cov(M,X^k)
$$

$$
\begin{cases}
M & \text{Stochastic Discount Factor} \\
X^k & \text{Payoff of A.D. Security}
\end{cases}
$$

$$
\pmb{E}(M(s))=\pmb{E}\left(\frac{\beta u'(C_2(s))}{u'(C_1)} \right)=\beta=\frac{1}{1+r}=0.9
$$

$$
\begin{cases}
\pmb{E}(X^1)=\pi(1)\times1+\pi(2)\times0=\frac{1}{2} \\
\pmb{E}(X^2)=\pi(1)\times0+\pi(2)\times1=\frac{1}{2}

\end{cases}
$$

$$
P^k=\pmb{E}(MX^k)=\pmb{E}(M)\pmb{E}(X^k)+Cov(M,X^k)
$$

$$
\begin{cases}
\pmb{E}(M(s))=0.9 \\
\pmb{E}(X^k)=\frac{1}{2}\quad\forall k=1,2
\end{cases}\implies
\begin{cases}
Cov(M,X^1)=0 \\
Cov(M,X^2)=0
\end{cases}
$$

Scholastic discount factor and payoffs are uncorrelated because agents are fully insured.

#### (vi)

$$
CA_1=Y_1-C_1=\frac{p(1)}{1+r}B_2(1)+\frac{p(2)}{1+r}B_2(2)
$$

$$
\begin{align}
\frac{p(1)}{1+r}B_2(1)&=\pi(1)CA_1+\frac{\pi(2)p(2)Y_2(1)}{1+r}
\left(
\frac{\pi(1)}{\pi(2)}\frac{Y_2(2)}{Y_2(1)}-\frac{p(1)}{p(2)}
\right) \\
0.45B_2(1)&=\frac{1}{2}\times(-\frac{9}{76})+\frac{\frac{1}{2}\times\frac{1}{2}\times1}{1+\frac{1}{9}}
\left(\frac{3}{2}-1 \right) \\
B_2(1)&=\frac{0.0533}{0.45} =0.1184
\end{align}
$$

$$
\begin{align}
\frac{p(2)}{1+r}B_2(2)&=CA_1-\frac{p(1)}{1+r}B_2(1) \\
0.45B_2(2)&=-\frac{9}{76}-0.45\times 0.1184 \\
B_2(2)&=-\frac{0.1717}{0.45}=-0.3816

\end{align}
$$

**Market clearing condition**
$$
\begin{cases}
B_{2}(1)+B_{2}^{\star}(1)=0 \\
B_{2}(2)+B_{2}^{\star}(2)=0
\end{cases}\implies
\begin{cases}
B_{2}^{\star}(1)=-0.1184 \\
B_{2}^{\star}(2)=0.3816
\end{cases}
$$

$$
B_2=
\begin{pmatrix}
0.1184 \\
-0.3816
\end{pmatrix}\quad
B_2^{\star}=
\begin{pmatrix}
-0.1184 \\
0.3816
\end{pmatrix}
$$

Home country is long A.D. security that pays in state 1 because it is relatively poorer in state 1 than 2. However, home country sells more than it buys ($CA<0$).

### 1(b)

$$
\begin{cases}
\mathcal{S}=2 \\
\rho=1 \\
\beta=0.9
\end{cases}
\quad
\begin{cases}
\pi(1)=\dfrac{1}{2} \\
\pi(2)=\dfrac{1}{2}
\end{cases} 
\quad
\begin{cases}
Y_1=1 \\
Y_1^{\star}=1
\end{cases}
\quad
\begin{cases}
Y_2(1)=\dfrac{1}{2} \\
Y_2^{\star}(1)=1
\end{cases}
\quad
\begin{cases}
Y_2(2)=2 \\
Y_2^{\star}(2)=\dfrac{1}{2}
\end{cases}
$$

#### (i)

$$
\begin{align}
Y_2^W(1)&=Y_2(1)+Y_2^{\star}(1)=\frac{1}{2}+1=\frac{3}{2} \\
Y_2^W(2)&=Y_2(2)+Y_2^{\star}(2)=2+\frac{1}{2}=\frac{5}{2}
\end{align}
$$

$$
\begin{align}
\frac{p(1)}{p(2)}&=
\left(
\frac{Y_2^W(1)}{Y_2^W(2)}
\right)^{-1}
\frac{\pi(1)}{\pi(2)}=\frac{5}{3}
\end{align}
$$

$$
\begin{cases}
3p(1)=5p(2) \\
p(1)+p(2)=1
\end{cases}\implies
\begin{cases}
p(1)=\dfrac{5}{8} \\
p(2)=\dfrac{3}{8}
\end{cases}
$$

$Y_2^W(1)<Y_2^W(2)$ , hence insuring consumption in state of the world 1 (when the endowment is scarce) is more expensive than in state of the world 2.

Note: prices are not actuarially fair (i.e., prices do not reflect the true probabilities of events), there is no full insurance.

#### (ii)

$$
Y_1^W=Y_1+Y_1^{\star}=2
$$

$$
\beta\pi(s)\left(\frac{C_1}{C_2(s)} \right)^{\rho}=\frac{p(s)}{1+r}
\implies
\beta\pi(s)\left(\frac{Y_1^W}{Y_2^W(s)} \right)^{\rho}=
\frac{p(s)}{1+r}
$$

$$
\begin{align}
\beta\pi(1)\left(\frac{Y_1^W}{Y_2^W(1)} \right)^{\rho}&=\frac{p(1)}{1+r} \\
0.9\times\frac{1}{2}\left(\frac{4}{3} \right)^{1}&=\frac{\frac{5}{8}}{1+r} \\
r&=\frac{1}{24}\quad (0.417)
\end{align}
$$

Home country is relatively richer than foreign country in period 2, hence, it will borrow from abroad in period 1 by selling A.D. securities (i.e., importing consumption goods).

#### (iii)

$$
\begin{align}
CA_1&=\frac{\beta}{1+\beta}Y_1-\frac{1}{1+\beta}
\left[
\frac{p(1)Y_2(1)+p(2)Y_2(2)}{1+r}
\right] \\
&=\frac{0.9}{1+0.9}\times1-\frac{1}{1+0.9}
\left[
\frac{\frac{5}{8}\times\frac{1}{2}+\frac{3}{8}\times2}{1+\frac{1}{24}}
\right] \\
&=-\frac{6}{95}\quad (-0.0632)
\end{align}
$$

#### (iv)

$$
\begin{cases}
C_1=Y_1-CA_1=1-(-0.0632)=1.0632 \\
C_1^{\star}=Y_1^{\star}+CA_1=1-0.0632=0.9368
\end{cases}
$$

**Euler equation:**
$$
\beta\pi(s)\left(\frac{C_1}{C_2(s)} \right)^{\rho}=\frac{p(s)}{1+r}\iff
C_2(s)=\beta\pi(s)\frac{1+r}{p(s)}C_1
$$

$$
\begin{cases}
C_2(1)=\beta\pi(1)\dfrac{1+r}{p(1)}C_1=
0.9\times\dfrac{1}{2}\times\dfrac{1+\frac{1}{24}}{\frac{5}{8}}\times\dfrac{101}{95}=0.7974 \\
C_2(2)=\beta\pi(2)\dfrac{1+r}{p(2)}C_1=
0.9\times\dfrac{1}{2}\times\dfrac{1+\frac{1}{24}}{\frac{3}{8}}\times\dfrac{101}{95}=1.3289
\end{cases}
$$

$$
\begin{cases}
C_2^{\star}(1)=\beta\pi(1)\dfrac{1+r}{p(1)}C_1^{\star}=
0.9\times\dfrac{1}{2}\times\dfrac{1+\frac{1}{24}}{\frac{5}{8}}\times\dfrac{89}{95}=0.7026 \\
C_2^{\star}(2)=\beta\pi(2)\dfrac{1+r}{p(2)}C_1^{\star}=
0.9\times\dfrac{1}{2}\times\dfrac{1+\frac{1}{24}}{\frac{3}{8}}\times\dfrac{89}{95}=1.1711
\end{cases}
$$

Full insurance is not possible. Consumption is higher when endowment is higher (s=2).

#### (v)

$$
\tilde{p}(s)=
\frac{p(s)}{1+r}\implies
\begin{cases}
\tilde{p}(1)=\dfrac{p(1)}{1+r}=\dfrac{\frac{5}{8}}{1+\frac{1}{24}}=0.6 \\
\tilde{p}(2)=\dfrac{p(2)}{1+r}=\dfrac{\frac{3}{8}}{1+\frac{1}{24}}=0.36
\end{cases}
$$

$$
\pmb{E}(M(s))=\pmb{E}\left(\frac{\beta u'(C_2(s))}{u'(C_1)} \right)=
\pmb{E}\left(\frac{\beta C_1}{C_2(s)} \right)
$$

$$
\begin{cases}
M(1)=\dfrac{\beta C_1}{C_2(1)}=\dfrac{0.9\times1.0632}{0.7974}=1.2 \\
M(2)=\dfrac{\beta C_1}{C_2(2)}=\dfrac{0.9\times1.0632}{1.3289}=0.72
\end{cases}
$$

$$
M=
\begin{bmatrix}
M(1) \\
M(2)
\end{bmatrix}=
\begin{bmatrix}
1.2 \\
0.72
\end{bmatrix}
$$

$$
X=
\begin{bmatrix}
1 & 0 \\
0 & 1
\end{bmatrix}
$$

$$
\begin{cases}
\pmb{E}(M)=\pi(1)M(1)+\pi(2)M(2)=\dfrac{1}{2}\times1.2+\dfrac{1}{2}\times0.72=0.96 \\
\pmb{E}(X^1)=\pi(1)\times 1+\pi(2)\times 0=\dfrac{1}{2} \\
\pmb{E}(X^2)=\pi(1)\times 0+\pi(2)\times 1=\dfrac{1}{2} 
\end{cases}
$$

$$
\begin{cases}
\pmb{E}(M)\pmb{E}(X^1)=0.48 \\
\pmb{E}(M)\pmb{E}(X^2)=0.48
\end{cases}
$$

$$
P^k=\pmb{E}(MX^k)=\pmb{E}(M)\pmb{E}(X^k)+Cov(M,X^k)
$$

$$
\begin{cases}
Cov(M,X^1)=\tilde{p}(1)-M(1)=0.6-0.48=0.12 \\
Cov(M,X^2)=\tilde{p}(2)-M(2)=0.36-0.48=-0.12
\end{cases}
$$

#### (vi)

$$
\begin{align}
\frac{p(1)}{1+r}B_2(1)&=\pi(1)CA_1+\frac{\pi(2)p(2)Y_2(1)}{1+r}
\left(
\frac{\pi(1)}{\pi(2)}\frac{Y_2(2)}{Y_2(1)}-\frac{p(1)}{p(2)}
\right) \\
0.6B_2(1)&=\frac{1}{2}\times(-\frac{6}{95})+\frac{\frac{1}{2}\times\frac{3}{8}\times\frac{1}{2}}{1+\frac{1}{24}}
\left(4-\frac{5}{3} \right) \\
B_2(1)&=\frac{0.1784}{0.6} =0.2974
\end{align}
$$

$$
\begin{align}
\frac{p(2)}{1+r}B_2(2)&=CA_1-\frac{p(1)}{1+r}B_2(1) \\
0.36B_2(2)&=-\frac{6}{95}-0.6\times 0.2974\\
B_2(2)&=-\frac{0.2416}{0.36}=-0.6711

\end{align}
$$

**Market clearing condition:**
$$
\begin{cases}
B_{2}(1)+B_{2}^{\star}(1)=0 \\
B_{2}(2)+B_{2}^{\star}(2)=0
\end{cases}\implies
\begin{cases}
B_{2}^{\star}(1)=-0.2974 \\
B_{2}^{\star}(2)=0.6711
\end{cases}
$$

$$
B_2=
\begin{pmatrix}
0.2974 \\
-0.6711
\end{pmatrix}
\quad
B_2^{\star}=
\begin{pmatrix}
-0.2974 \\
0.6711
\end{pmatrix}
$$

When A.D. security offers a hedge against low endowment (i.e., in state of world 1), agents value the A.D. security more and are willing to pay a higher price.

|         | State 1 | State 2 |
| :-----: | :-----: | :-----: |
| Asset 1 |    1    |    0    |
| Asset 2 |    0    |    1    |

Since the Stochastic Discount Factor is high when consumption is low (you discount the future consumption at a higher rate because you value consumption today a lot), then 
$$
\begin{cases}
Cov(M,X^1)>0 \\
Cov(M,X^2)<0
\end{cases}
$$
