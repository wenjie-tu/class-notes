# Problem Set 7

## 1. Bayesian Updating

**Notation**
$$
\begin{cases}
V>0 & \text{non-fundable fixed cost} \\
X>V & \text{prize} \\
S & \text{the idea is a success}  \\
F & \text{the idea is a failure} \\
\tau & \text{signal} \\
s & \text{signal cost}
\end{cases}
$$

$$
\text{acquire signal}
\begin{cases}
	\text{yes} &
		\begin{cases}
			+ & \text{implement idea}
				\begin{cases}
					\text{yes} & U(+,1)		
					\\
					\text{no} & \text{acquire signal}
						\begin{cases}
							\text{yes} & 
								\begin{cases}
									+ & \text{implement} 
										\begin{cases}
											\text{yes} & U(+,+,1) \\
											\text{no} & U(+,+,0)
										\end{cases}
									\\
									- & \text{implement} 
										\begin{cases}
											\text{yes} & U(+,-,1) \\
											\text{no} & U(+,-,0)
										\end{cases}
								\end{cases}
							\\
							\text{no} & U(+,0)
						\end{cases}
            	\end{cases}
            \\
			- & \text{implement idea}
				\begin{cases}
					\text{yes} & U(-,1) \\
					\text{no} & \text{acquire signal}
						\begin{cases}
							\text{yes} &  
								\begin{cases}
									+ & \text{implement} 
										\begin{cases}
											\text{yes} & U(-,+,1) \\
											\text{no} & U(-,+,0)
										\end{cases}
									\\
									- & \text{implement} 
										\begin{cases}
											\text{yes} & U(-,-,1) \\
											\text{no} & U(-,-,0)
										\end{cases}
								\end{cases}
							\\
							\text{no} & U(-,0)
						\end{cases}
				\end{cases}
		\end{cases}
	\\
		\text{no} & \text{implement idea} 
			\begin{cases}
				\text{yes} & U(1) \\
				\text{no} & U(0)
			\end{cases}
\end{cases}
$$




$$
\begin{cases}
P(+|S)=\theta \\
P(-|F)=\theta \\
X=2F \\
\theta=\frac{4}{5} \\
P(S)=\frac{1}{2}
\end{cases}
$$

$$
\begin{cases}
P(S)=\frac{1}{2} \\
P(F)=\frac{1}{2}
\end{cases}
\\
\begin{cases}
P(+)=\frac{1}{2} \\
P(-)=\frac{1}{2}
\end{cases}
\\
\begin{cases}
P(+|S)=\frac{4}{5} \\
P(-|S)=\frac{1}{5}
\end{cases}
\\
\begin{cases}
P(+|F)=\frac{1}{5} \\
P(-|F)=\frac{4}{5}
\end{cases}
$$

### 1(a)

**Calculating posteriors**
$$
\begin{align}
P(S|+)&=\frac{P(S,+)}{P(+)} \\
&=\frac{P(+|S)\cdot P(S)}{P(+|S)\cdot P(S)+P(+|F)\cdot P(F)} \\
&=\frac{\frac{1}{2}\theta}{\frac{1}{2}\theta+\frac{1}{2}(1-\theta)} \\
&=\theta=\frac{4}{5}
\end{align}
$$

$$
\begin{align}
P(S|-)&=\frac{P(S,-)}{P(-)} \\
&=\frac{P(-|S)\cdot P(S)}{P(-|S)\cdot P(S)+P(-|F)\cdot P(F)} \\
&=\frac{\frac{1}{2}(1-\theta)}{\frac{1}{2}(1-\theta)+\frac{1}{2}\theta} \\
&=1-\theta=\frac{1}{5}
\end{align}
$$

**[Bayes' rule with 3 events](https://en.wikipedia.org/wiki/Bayes%27_theorem)**
$$
\begin{align}
P(A|B,C)&=\frac{P(A,B,C)}{P(B,C)} \\
&=\frac{P(B|A,C)\cdot P(A,C)}{P(B,C)} \\
&=\frac{P(B|A,C)\cdot P(A|C)\cdot P(C)}{P(B,C)} \\
&=\frac{P(B|A,C)\cdot P(A|C)\cdot P(C)}{P(B|C)\cdot P(C)} \\
&=\frac{P(B|A,C)\cdot P(A|C)}{P(B|C)}
\end{align}
$$

$$
\begin{align}
P(S|+,+)&=\frac{P(+|S,+)\cdot P(S|+)}{P(+|S,+)\cdot P(S|+)+P(+|F,+)\cdot P(F|+)} \\
&=\frac{\theta^2}{\theta^2+(1-\theta)^2} \\
&=\frac{\frac{16}{25}}{\frac{16}{25}+\frac{1}{25}} \\
&=\frac{16}{17}
\end{align}
$$

$$
P(F|+,+)=1-P(S|+,+)=\frac{1}{17}
$$

**[Conditional Independence](https://en.wikipedia.org/wiki/Conditional_independence#:~:text=they%20are%20taller.-,Conditional%20independence%20of%20random%20variables,their%20conditional%20probability%20distribution%20given%20.)**
$$
\begin{align}
P(S|+,-)&=\frac{P(-|S,+)\cdot P(+|S)}{P(-|+)} \\
&=\frac{P(-|S,+)\cdot P(+|S)}{P(-|S,+)\cdot P(+|S)+P(-|F,+)\cdot P(+|F)} \\
&=\frac{(1-\theta)\theta}{(1-\theta)\theta+\theta(1-\theta)} \\
&=\frac{1}{2}
\end{align}
$$

$$
P(F|+,-)=1-P(S|+,-)=\frac{1}{2}
$$

$$
\begin{align}
P(S|-,+)&=\frac{P(+|S,-)\cdot P(-|S)}{P(+|-)} \\
&=\frac{P(+|S,-)\cdot P(-|S)}{P(+|S,-)\cdot P(-|S)+P(+|F,-)\cdot P(-|F)} \\
&=\frac{\theta(1-\theta)}{\theta(1-\theta)+(1-\theta)\theta} \\
&=\frac{1}{2}
\end{align}
$$

$$
P(F|-,+)=1-P(S|-,+)=\frac{1}{2}
$$


$$
\begin{align}
P(S|-,-)&=\frac{P(-|S,-)\cdot P(-|S)}{P(-|-)} \\
&=\frac{P(-|S,-)\cdot P(-|S)}{P(-|S,-)\cdot P(-|S)+P(-|F,-)\cdot P(-|F)} \\
&=\frac{(1-\theta)^2}{(1-\theta)^2+\theta^2} \\
&=\frac{1}{17}
\end{align}
$$
**Decision tree**
$$
\text{acquire signal}
\begin{cases}
	\text{yes} &
		\begin{cases}
			+ & \text{implement idea}
				\begin{cases}
					\text{yes} & U(+,1)		
					\\
					\text{no} & \text{acquire signal}
						\begin{cases}
							\text{yes} & 
								\begin{cases}
									+ & \text{implement} 
										\begin{cases}
											\text{yes} & U(+,+,1) \\
											\text{no} & U(+,+,0)
										\end{cases}
									\\
									- & \text{implement} 
										\begin{cases}
											\text{yes} & U(+,-,1) \\
											\text{no} & U(+,-,0)
										\end{cases}
								\end{cases}
							\\
							\text{no} & U(+,0)
						\end{cases}
            	\end{cases}
            \\
			- & \text{implement idea}
				\begin{cases}
					\text{yes} & U(-,1) \\
					\text{no} & \text{acquire signal}
						\begin{cases}
							\text{yes} &  
								\begin{cases}
									+ & \text{implement} 
										\begin{cases}
											\text{yes} & U(-,+,1) \\
											\text{no} & U(-,+,0)
										\end{cases}
									\\
									- & \text{implement} 
										\begin{cases}
											\text{yes} & U(-,-,1) \\
											\text{no} & U(-,-,0)
										\end{cases}
								\end{cases}
							\\
							\text{no} & U(-,0)
						\end{cases}
				\end{cases}
		\end{cases}
	\\
		\text{no} & \text{implement idea} 
			\begin{cases}
				\text{yes} & U(1) \\
				\text{no} & U(0)
			\end{cases}
\end{cases}
$$

$$
\begin{align}
U(+,1)&=P(S|+)\times(V-s)+P(F|+)\times(-V-s) \\
&=\frac{4}{5}\times(V-s)+\frac{1}{5}\times(-V-s) \\
&=\frac{3}{5}V-s
\end{align}
$$

$$
\begin{align}
U(+,+,1)&=P(S|+,+)\times(V-2s)+P(F|+,+)\times(-V-2s) \\
&=\frac{16}{17}\times(V-2s)+\frac{1}{17}\times(-V-2s) \\
&=\frac{15}{17}V-2s
\end{align}
$$

$$
\begin{align}
U(+,+,0)&=-2s
\end{align}
$$

$$
\begin{align}
U(+,-,1)&=P(S|+,-)\times(V-2s)+P(F|+,-)\times(-V-2s) \\
&=\frac{1}{2}\times(V-2s)+\frac{1}{2}\times(-V-2s) \\
&=-2s
\end{align}
$$

$$
U(+,-,0)=-2s
$$

$$
U(+,0)=-s
$$

$$
\begin{align}
U(-,1)&=P(S|-)\times(V-s)+P(F|-)\times(-V-s) \\
&=\frac{1}{5}\times(V-s)+\frac{4}{5}\times(-V-s) \\
&=-\frac{3}{5}V-s

\end{align}
$$

$$
\begin{align}
U(-,+,1)&=P(S|-,+)\times(V-2s)+P(F|-,+)\times(-V-2s) \\
&=\frac{1}{2}\times(V-2s)+\frac{1}{2}\times(-V-2s) \\
&=-2s
\end{align}
$$

$$
U(-,+,0)=-2s
$$

$$
\begin{align}
U(-,-,1)&=P(S|-,-)\times(V-2s)+P(F|-,-)\times(-V-2s) \\
&=\frac{1}{17}\times(V-2s)+\frac{16}{17}\times(-V-2s) \\
&=-\frac{15}{17}V-2s
\end{align}
$$

$$
U(-,-,0)=-2s
$$

$$
U(-,0)=-s
$$

$$
U(1)=P(S)\times V+P(F)\times(-V)=0 \\
U(0)=0
$$

$$
\text{acquire signal}
\begin{cases}
	\text{yes} &
		\begin{cases}
			+ & \text{implement idea}
				\begin{cases}
					\text{yes} & \frac{3}{5}V-s		
					\\
					\text{no} & \text{acquire signal}
						\begin{cases}
							\text{yes} & 
								\begin{cases}
									+ & \text{implement} 
										\begin{cases}
											\text{yes} & \frac{15}{17}V-2s \\
											\text{no} & -2s
										\end{cases}
									\\
									- & \text{implement} 
										\begin{cases}
											\text{yes} & -2s \\
											\text{no} & -2s
										\end{cases}
								\end{cases}
							\\
							\text{no} & -s
						\end{cases}
            	\end{cases}
            \\
			- & \text{implement idea}
				\begin{cases}
					\text{yes} & -\frac{3}{5}V-s \\
					\text{no} & \text{acquire signal}
						\begin{cases}
							\text{yes} &  
								\begin{cases}
									+ & \text{implement} 
										\begin{cases}
											\text{yes} & -2s \\
											\text{no} & -2s
										\end{cases}
									\\
									- & \text{implement} 
										\begin{cases}
											\text{yes} & -\frac{15}{17}V-2s \\
											\text{no} & -2s
										\end{cases}
								\end{cases}
							\\
							\text{no} & -s
						\end{cases}
				\end{cases}
		\end{cases}
	\\
		\text{no} & \text{implement idea} 
			\begin{cases}
				\text{yes} & 0 \\
				\text{no} & 0
			\end{cases}
\end{cases}
$$

### 1(b)

$$
P(S|+)=\frac{1}{1+\left(\frac{1-\theta}{\theta} \right)^c\left(\frac{1-p}{p} \right)}
$$

$c=1$
$$
P(S|+)=\frac{1}{1+\frac{1-p}{p}}=p\implies\text{no belief updating}
$$
The entrepreneur is not willing to pay for a signal because the signal will be ignored anyways.

Optimal decision

* never acquire signal
* indifferent between implementing and not implementing

## 2. Optimal Information Acquisition

$$
\begin{cases}
\omega_0 & \text{project $j=0$ is successful} \\
\omega_1 & \text{project $j=1$ is successful}
\end{cases}
$$

$$
\begin{cases}
P(\omega_0)=\frac{1}{2} \\
P(\omega_1)=\frac{1}{2}
\end{cases}
$$


$$
\text{utility}=
\begin{cases}
1 & \text{project $j=0$ is successful} \\
1 & \text{project $j=1$ is successful} \\
-c & \text{project $j=0$ fails} \\
0 & \text{project $j=1$ fails}
\end{cases}
$$

### 2(a)

$$
\begin{align}
EU(S)&=P(S_0)\cdot\left[P(\omega_0|S_0)\cdot 1+P(\omega_1|S_0)\cdot(-c)\right]+
P(S_1)\cdot\left[P(\omega_1|S_1)\cdot 1+P(\omega_0|S_1)\cdot0\right] \\
&=P(S_0|\omega_0)\cdot P(\omega_0)\cdot1+P(S_0|\omega_1)\cdot P(\omega_1)(-c)+
P(S_1|\omega_1)\cdot P(\omega_1)\cdot 1+P(S_1|\omega_0)\cdot P(\omega_0)\cdot0 \\
&=\frac{1}{2}\left[P(S_0|\omega_0)-c\cdot P(S_0|\omega_1)+P(S_1|\omega_1) \right] \\
&=\frac{1}{2}\left[P(S_0|\omega_0)-c\cdot(1-P(S_1|\omega_1))+P(S_1|\omega_1) \right] \\
&=\frac{1}{2}\left[P(S_0|\omega_0)+(1+c)P(S_1|\omega_1)-c \right]
\end{align}
$$

### 2(b)

$$
\begin{align}
EU(\text{invest in $j=0$})&=P(\omega_0)\cdot 1+P(\omega_1)\cdot (-c) \\
&=\frac{1}{2}\times 1-\frac{1}{2}\cdot c \\
&=\frac{1}{2}(1-c)
\end{align}
$$

$$
\begin{align}
EU(\text{invest in $j=1$})&=P(\omega_0)\cdot 0 + P(\omega_1)\cdot 1 \\
&=\frac{1}{2}
\end{align}
$$

DM will always choose to invest in $j=1$ project and gain a utility of $\frac{1}{2}$ when deciding according to the prior.

In order to make sure separating signals yield a higher utility than deciding according to the prior, we need to set
$$
\frac{1}{2}\left[P(S_0|\omega_0)+(1+c)P(S_1|\omega_1)-c \right]>\frac{1}{2} \\
P(S_1\omega_1)\geq\frac{c-P(S_0|\omega_0)}{1+c}
$$

### 2(c)

$$
\begin{align}
\frac{\partial EU(S)}{\partial P(S_0|\omega_0)}&=\frac{1}{2} \\
\frac{\partial EU(S)}{\partial P(S_1|\omega_1)}&=\frac{1}{2}(1+c)>\frac{1}{2}
\end{align}
$$

Acquire information (direct attention) in $P(S_1|\omega_1)$ 

Intuition: you want to avoid the mismatch