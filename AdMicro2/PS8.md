# Problem Set 8

## 1. Salience I

### 1(a)

$$
\sigma(x,\bar{x})=\frac{|x-\bar{x}|}{\bar{x}}
$$

* **zero homogeneity** 

  Let $\lambda>0$ 
  $$
  \sigma(\lambda x,\lambda\bar{x})=\frac{|\lambda x-\lambda\bar{x}|}{\lambda\bar{x}}
  =\frac{|x-\bar{x}|}{\bar{x}}=\sigma(x,\bar{x})
  $$

* **ordering**
  $$
  \underbrace{[x,y]\subsetneq[x',y']}_
  \text{implicitly assumes $x\leq y\quad x'\leq y'$ }
  \implies\sigma(x,y)<\sigma(x',y')
  $$

  $$
  \underbrace{[y,x]\subsetneq[y',x']}_{y\leq x\quad y'\leq x'}\implies
  \sigma(x,y)<\sigma(x',y')
  $$

  $$
  \begin{cases}
  \sigma(x,y)=\dfrac{|x-y|}{y}=\dfrac{y-x}{y}=1-\dfrac{x}{y}<1-\dfrac{x'}{y'}=
  \dfrac{y'-x'}{y'}=\sigma(x',y') & x<y \\
  \sigma(x,y)=\dfrac{|x-y|}{y}=\dfrac{x-y}{y}=\dfrac{x}{y}-1<\dfrac{x'}{y'}-1=
  \dfrac{x'-y'}{y'}=\sigma(x',y') & x>y
  \end{cases}
  $$

**Interpretation**

This function measures attribute salience as proportional difference from the average value

### 1(b)

Additional assumption: $x>\bar{x}, x'>\bar{x}'$
$$
\begin{align}
\frac{x'-\bar{x}'}{\bar{x}'}&>\frac{x-\bar{x}}{\bar{x}} \\
\frac{x'}{\bar{x}'}-1&>\frac{x}{\bar{x}}-1 \\
\frac{x'}{\bar{x}'}&>\frac{x}{\bar{x}} \\
x'&>\frac{x}{\bar{x}}\times\bar{x}'
\end{align}
$$

$$
[\bar{x}',\frac{x}{\bar{x}}\times\bar{x}']\subsetneq[\bar{x}',x']\implies
\sigma(x',\bar{x}')>\sigma(\frac{x}{\bar{x}}\times\bar{x}',\bar{x}')=
\sigma(x,\bar{x})
$$

## 2. Salience II

$$
\delta(c_1-c_2)<q_1-q_2<\frac{c_1-c_2}{\delta}
$$

### 2(a)

$$
\frac{q_1}{c_1}>\frac{q_2}{c_2}
$$

$$
j=
\begin{cases}
1 & p_1=\min \left\{\dfrac{q_1}{q_2}c_2,\dfrac{q_1-q_2}{\delta}+c_2 \right\} \\
2 & p_2=c_2
\end{cases}
$$

#### Case 1

$$
\frac{q_1}{q_2}c_2\leq\frac{q_1-q_2}{\delta}+c_2\implies p_1=\frac{q_1}{q_2}c_2
$$

$$
\frac{q_1}{p_1}=\frac{q_1}{\frac{q_1}{q_2}c_2}=\frac{q_2}{c_2}=\frac{q_2}{p_2}
$$

$$
\sigma(p_1,\bar{p})=\sigma(q_1,\bar{q})\implies\text{$p$ and $q$ are equally salient}
$$

* If $u^S(q_1,\bar{p}_1)=q_1-p_1>u^S(q_2,p_2)=q_2-p_2$ , Firm 1 gets the entire market

* If $u^S(q_1,p_1)\leq u^S(q_2,p_2)$ , apply "limit pricing" assumption
  $$
  p_1>c_1\implies p_2=c_2
  $$
  If firm 1 reduces price by small $\varepsilon$ to $p_1-\varepsilon$ 
  $$
  \frac{q_1}{p_1-\varepsilon}=\frac{q_1}{\frac{q_1}{q_2}c_2-\varepsilon}=
  \frac{q_2}{c_2-\frac{q_2}{q_1}\varepsilon}>\frac{q_2}{c_2}=\frac{q_2}{p_2}\implies
  \text{quality is salient}
  $$

  $$
  u^S(q_1,p_1-\varepsilon)=q_1-\delta(p_1-\varepsilon)\geq
  q_1-\delta(\frac{q_1-q_2}{\delta}+c_2-\varepsilon)=
  q_2-\delta c_2+\delta\varepsilon>q_2-\delta c_2=u^S(q_2,p_2)
  $$

  Firm 1 can undercut firm 2 then firm 1 can get the entire market $d_1=1,d_2=0$

  * Firm 2 does not deviate to $\tilde{p}_2<p_2=c_2$  because this is a weakly dominated strategy

    If $\tilde{p}_2>p_2$ , then $\frac{q_1}{p_1}>\frac{q_2}{\tilde{p}_2}\implies$ quality is salient  
    $$
    u^S(q_1,p_1)=q_1-\delta p_1\geq q_2-\delta c_2>q_2-\delta\tilde{p}_2=
    u^S(q_2,\tilde{p}_2)
    $$
    Firm 2 still makes zero profit and has no incentive to set $\tilde{p}_2>p_2$

  * Firm 1 does not deviate to $\tilde{p}_1<p_1$ 
    $$
    \Pi_1(q_1,\tilde{p}_1,q_2,p_2)\leq\tilde{p}_1-c_1<p_1-c_1=\Pi_1(q_1,p_1,q_2,p_2)
    $$

  * Firm 1 does not deviate to $\tilde{p}_1>p_1$
    $$
    \frac{q_1}{\tilde{p}_1}<\frac{q_1}{p_1}=\frac{q_2}{p_2}\implies
    \text{price is salient}
    $$

    $$
    u^S(q_1,\tilde{p}_1)=\delta q_1-\tilde{p}_1<\delta q_1-p_1=
    \delta q_1-\frac{q_1}{q_2}c_2
    $$

    $$
    \begin{align}
    q_1-q_2&<\frac{c_1-c_2}{\delta} \\
    \delta(q_1-q_2)&<c_1-c_2<\frac{q_1}{q_2}\times c_2-c_2 \\
    \delta(q_1-q_2)&<c_2\times(\frac{q_1}{q_2}-1) \\
    \delta q_1-\frac{q_1}{q_2}\times c_2&<\delta q_2-c_2 \\
    u^S(q_1,\tilde{p}_1)&<u^S(q_2,p_2)
    \end{align}
    $$

    Firm 2 gets the whole market $\Pi_1=0$

#### Case 2

$$
\frac{q_1-q_2}{\delta}+c_2<\frac{q_1}{q_2}c_2\implies p_1=\frac{q_1-q_2}{\delta}+c_2
$$

$$
\frac{q_1}{p_1}>\frac{q_1}{\frac{q_1}{q_2}c_2}=\frac{q_2}{c_2}=\frac{q_2}{p_2}
\implies\text{quality is salient} 
$$

$$
\begin{align}
u^S(q_1,p_1)&=q_1-\delta p_1 \\ 
&=q_1-\delta\left[\frac{q_1-q_2}{\delta}+c_2\right] \\
&=q_2-\delta c_2 \\
&=u^S(q_2,p_2)

\end{align}
$$

If firm 1 switches to price $p_1-\varepsilon,\varepsilon>0$ , then the quality is still salient and
$$
\begin{align}
u^S(q_1,p_1-\varepsilon)&=q_1-\delta p_1+\delta\varepsilon \\
&=q_1-\delta\left(\frac{q_1-q_2}{\delta}+c_2\right)+\delta\varepsilon \\
&=q_2-\delta c_2+\delta\varepsilon \\
&>q_2-\delta c_2=u^S(q_2,p_2)
\end{align}
$$
By "limit pricing", firm 1 gets the entire market

* Firm 2 never deviates

  * If $\tilde{p}_2<p_2=c_2$ : this is weakly dominated strategy

  * If  $\tilde{p}_2>p_2$ , quality still salient and 
    $$
    u^S(q_1,p_1)=u^S(q_2,p_2)=q_2-\delta p_2>q_2-
    \delta\tilde{p}_2=u^S(q_2,\tilde{p}_2)
    $$
    still $d_1=1,d_2=0$ 

* Firm 1 never deviates

  * If $\tilde{p}_1<p_1:$
    $$
    \Pi_1(\tilde{p}_1,q_1,p_2,q_2)=\tilde{p}_1-c_1<p_1-c_1=\Pi(p_1,q_1,p_2,q_2)
    $$

  * If $\tilde{p}_1>p_1:$  Firm 2 gets the entire market independent of whether quality or price is salient
    $$
    \Pi_1=0
    $$

In conclusion
$$
p_2=c_2,p_1=\min\left\{\frac{q_1}{q_2}c_2,\frac{q_1-q_2}{\delta}+c_2 \right\}
\text{ is an equilibrium}
$$

### 2(b)

$$
q_1-c_1>q_2-c_2
$$

* If $\delta=1$ , we have $p_2=c_2$ and $p_1=(q_1-q_2)+c_2$ in equilibrium, firm 1 gets the entire market
  $$
  \Pi_1^{\delta=1}=q_1-q_2+c_2-c_1
  $$

* In salient equilibrium 
  $$
  \Pi_1^{\delta<1}\leq\frac{q_1}{q_2}c_2-c_1
  $$

$$
\begin{align}
\Pi_1^{\delta=1}&>\Pi_1^{\delta<1} \\
q_1-q_2+c_2-c_1&>\frac{q_1}{q_2}c_2-c_1 \\
q_1-q_2&>\left(\frac{q_1}{q_2}-1 \right)c_2 \\
q_2&>c_2
\end{align}
$$

Payoff from firm 1 is strictly higher in rational equilibrium than salience equilibrium iff $c_2<q_2$

**Intuition**

Firm 1 wants to set high price if quality is salient but this high price would make price salient (against firm 1's advantage)

Firm 1 wants to set price low enough to keep quality salient, which reduces market power.