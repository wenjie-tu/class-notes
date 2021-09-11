# Problem Set 1

## 1. (Preference Relations)

If $\succeq$ is rational, then:

1. $\succ$ is **transitive**, but **not** reflexive ($x \succ x$ false $\forall x$).
2. $\sim$ is an **equivalence relation** (reflexive, transitive and symmetric).

Transitivity  ($x \succ y \and y \succ z \stackrel{?}{\implies} x \succ z$)
$$
\begin{align}
x\succ y &\iff x \succeq y \and y \nsucceq x \\
y \succ z &\iff y \succeq z \and z \nsucceq y
\end{align}
$$
$x \succeq y \and y \succeq z \implies x \succeq z$  (by transitivity).

We know 
$$
x \succ z \Longleftrightarrow x \succeq z \and z \nsucceq x 
$$
We need to prove that $z \nsucceq x$ . Suppose $z \succeq x$
$$
\begin{gather}
z \succeq x \and x \succeq y \implies z \succeq y \quad \text{by transitivity} \\
z \succeq y \and z \nsucceq y \quad \text{contradiction} \\
\quad z \nsucceq x \\
x \succeq z \and z \nsucceq x \implies z \succ x
\end{gather}
$$
$\succ$ is transitive.

Irreflexivity $(x \succ x, \forall x)$ 
$$
x \succ x \Longleftrightarrow x \succeq x \and x \nsucceq x 
\quad \text{not possible}
$$




Equivalence relation $(x\sim y \and y\sim z \stackrel{?}{\implies} x\sim z)$ 
$$
\begin{gather}
x \sim y \Longleftrightarrow x \succeq y \and y \succeq x \quad 
\text{by reflexivity} \\
y \sim z \Longleftrightarrow y \succeq z \and z \succeq y \quad 
\text{by reflexivity} \\
x\succeq y \and y \succeq z \implies x \succeq z \quad 
\text{by transitivity} \\
z \succeq y \and y \succeq x \implies z \succeq x \quad 
\text{by transitivity} \\
x \succeq z \and z\succeq x \implies x \sim z
\end{gather}
$$

## 2. (Preference Relations)







## 3.(Indifference sets) 

### 3(a)

$$
I(x)\equiv \{y\in X: y \sim x\}
$$

Prove:
$$
I(x)\neq I(x')  \implies I(x)\cap I(x')=\varnothing
$$


### 3(b)

Prove:
$$
\begin{align}
\text{rationality} &\implies \text{no intersection} \\
\text{intersection} &\implies \text{irrational}
\end{align}
$$
Example:
$$
\succeq = \{
(a,a),(a,b),(a,c),(b,a),(b,b),(b,c),(c,a),(c,c)\}
$$

$$
\begin{align*}
\\
I(a)&=\{y\in \{a,b,c\}:y \sim a\} \\
&=\{y\in \{a,b,c\}:y \succeq a \and a \succeq y\} \\
&=\{a,b,c\} \\
\\
I(b)&=\{y\in \{a,b,c\}:y \sim b\} \\
&=\{y\in \{a,b,c\}:y \succeq b \and b \succeq y\} \\
&=\{a,b\} \\
\\
I(c)&=\{y\in \{a,b,c\}:y \sim c\} \\
&=\{y\in \{a,b,c\}:y \succeq c \and c \succeq y\} \\
&=\{a,c\}
\end{align*}
$$
$$
I(a)\cap I(b)\cap I(c)=\{a\}
$$

Completeness is satisfied while transitivity is violated.



## 4. (WARP)

Let $X=\{x,y,z\}$  and
$$
\mathscr{B}_1=(\{x,y\},\{x,y,z\}) \quad 
\mathscr{B}_2=\{\{x,y\},\{x,z\},\{y,z\}\}
$$
Two choice structures:
$$
(\mathscr{B}_1,C_1(\cdot)) \quad (\mathscr{B}_2,C_2(\cdot))
$$

$$
\begin{gather}
C_1(\{x,y\})=\{x,y\}, \quad C_1(\{x,y,z\})=\{y,z\} \\
C_2(\{x,y\})=\{x\}, \quad C_2(\{x,z\})=\{z\}, \quad C_2(\{y,z\})=\{y\}
\end{gather}
$$

### 4(a)

For $(\mathscr{B}_1,C_1(\cdot))$ , set $B_1=\{x,y\}$ and $B_2=\{x,y,z\}$ 
$$
\begin{gather}
C_1(B_1)=\{x,y\} \implies x \in C_1(B_1) \\
C_1(B_2)=\{y,z\} \implies y \in C_1(B_2) \\
x,y \in B_1 \and x \in C_1(B_1), \exists B_2 \text{ with } x,y \in B_2:
y \in C_1(B_2) \text{ but } x \notin C_1(B_2) \\
x,y \in B_1,B_2\quad x \in C_1(B_1) \and y \in C_1(B_2) \nRightarrow 
x \in C_1(B_2)
\end{gather}
$$
Therefore, choice structure $(\mathscr{B}_1,C_1(\cdot))$ violates WARP.



For $(\mathscr{B}_2,C_2(\cdot)), \nexists x,y \in B,B'$ , we cannot find a WARP violation.



### 4(b)

$$
C^*(B,\succeq)=\{x \in B:x\succeq y\space \forall \space y \in B\}
$$

$$
\begin{align}
\text{rational preference} &\implies \text{WARP} \\
\text{not WARP} &\implies \text{not rational preference}
\end{align}
$$

* Since choice structure $(\mathscr{B}_1,C_1(\cdot))$ does not satisfy WARP, it cannot be rationalized by a rational preference relation.
* For the choice structure  $(\mathscr{B}_2,C_2(\cdot))$ , we cannot know whether it can be rationalized given the information.

 

## 6. (Utility and Preferences)

## 6(a)

$$
\begin{gather}
\text{The function } u:X \rightarrow \mathbb{R}_+^2 \text{ represents } \succeq \text{ on } X \text{ if for any } x,y \in X, \text{ then } \\x\succeq y \Longleftrightarrow u(x) \geq u(y)
\end{gather}
$$

$$
\begin{align*}
u_1(x,y)&=10(\ln x + \ln y) \\
u_2(x,y)&=\exp(xy) \\
u_3(x,y)&=\sqrt{2xy}-10 \\
\end{align*}
$$

### i)

$$
\begin{align*}
v_1(x,y)&=\exp\left(\frac{u_1(x,y)}{10}\right) \\
&=\exp\left(\frac{10(\ln x + \ln y)}{10}\right) \\
&=\exp\left(\ln x + \ln y\right) \\
&= xy \\
&= u(x,y)
\end{align*}
$$

Note: domain in this case is a bit different from that given in this problem ($x,y \neq 0$) 


$$
\begin{align*}
v_2(x,y)&=\ln u_2(x,y) \\
&=\ln e^{xy} \\
&=xy \\
&=u(x,y)\\
\end{align*}
$$

$$
\begin{align*}
v_3(x,y)&=\frac{(u_3(x,y)+10)^2}{2} \\
&=xy \\
&=u(x,y)
\end{align*}
$$


## 6(c)

* Monotone but not strictly monotone when the bundle is on the slope.
* Convex but not strictly convex when the bundle is on the slope.

