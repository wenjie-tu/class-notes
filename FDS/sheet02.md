# Foundations of Data Science

## Exercise 2

#### 1. Logical Gates Using Perceptron

$$
y=
\begin{cases}
1, & \textrm{if $w_0+\sum_{i=1}^Dw_ix_i\geq0$} \\
-1, & \textrm{otherwise}
\end{cases}
$$

#### 1(a)

**The truth table for AND gate:**

| $x_1$ | $x_2$ | $x_1$ AND $x_2$ |
| ----- | ----- | --------------- |
| 0     | 0     | -1              |
| 0     | 1     | -1              |
| 1     | 0     | -1              |
| 1     | 1     | 1               |

A perceptron that simulates an AND gate:
$$
y=
\begin{cases}
1, & \textrm{if $-2+x_1+x_2\geq0$} \\
-1, & \textrm{otherwise}
\end{cases}
$$
**The truth table for OR gate:**

| $x_1$ | $x_2$ | $x_1$ OR $x_2$ |
| ----- | ----- | -------------- |
| 0     | 0     | -1             |
| 0     | 1     | 1              |
| 1     | 0     | 1              |
| 1     | 1     | 1              |

A perceptron that simulates an OR gate:
$$
y=
\begin{cases}
1, & \textrm{if $-1+x_1+x_2\geq0$} \\
-1 & \textrm{otherwise}
\end{cases}
$$
**The truth table NOT gate:**

| $x_1$ | NOT $x_1$ |
| ----- | --------- |
| 0     | 1         |
| 1     | -1        |

A perceptron that simulates a NOT gate:
$$
y=
\begin{cases}
1, & \textrm{if $-x_1\geq0$} \\
-1, & \textrm{otherwise}
\end{cases}
$$

#### 1(b)

**The truth table for XOR gate:**

| $x_1$ | $x_2$ | $x_1$ XOR $x_2$ |
| ----- | ----- | --------------- |
| 0     | 0     | -1              |
| 0     | 1     | 1               |
| 1     | 0     | 1               |
| 1     | 1     | -1              |

Since the XOR function is not linearly separable, it is impossible for a single peceptron to simulate such a gate.

![Solving XOR with a single Perceptron | by Lucas Araújo | Medium](https://miro.medium.com/max/1400/1*Tc8UgR_fjI_h0p3y4H9MwA.png)

#### 1(c)

**The truth table for SAME gate:**

| $x_1$ | $x_2$ | $x_1$ SAME $x_2$ |
| ----- | ----- | ---------------- |
| 0     | 0     | 1                |
| 0     | 1     | 0                |
| 1     | 0     | 0                |
| 1     | 1     | 1                |



#### 1(d)

$$
\tanh(z)=\frac{e^z-e^{-z}}{e^z+e^{-z}}
$$

$$
y=
\begin{cases}
1, & \tanh\left(w_0+\sum_{i=1}^{D}w_ix_i \right)>0.99 \\
-1, & \tanh\left(w_0+\sum_{i=1}^{D}w_ix_i \right)<-0.99
\end{cases}
$$



#### 2. Nearest Neighbor Classification

#### 2(a)

* A $k$-N
* N classifier is non-linear since its decision boundary on the feature space is a non-linear function.
* A perceptron is linear since its decision boundary on the feature space is a linear function.

If a classification problem is non-linear separable and the decision boundary cannot be approximated well with a linear hyperplane, non-linear classifiers (e.g., $k$-NN) are more accurate than linear classifiers (e.g., perceptron).



#### 3. Linear Regression and Basis Expansion

#### 3(a)

$$
y_i=w_0+w_1x_i,\quad\text{for $i\in\{1,\cdots,6\}$}
$$

$$
\mathbf{X}=
\begin{bmatrix}
1 & 2 \\ 1 & 3 \\ 1 & 4 \\ 1 & 5 \\ 1 & 6 \\ 1 & 7
\end{bmatrix},
\quad
\mathbf{y}=
\begin{bmatrix}
5 \\ 6 \\ 5 \\ 9 \\ 7 \\ 10
\end{bmatrix}
$$

The least squares estimator:
$$
\mathbf{w}=(\mathbf{X}^{\intercal}\mathbf{X})^{-1}\mathbf{X}^{\intercal}\mathbf{y}
\approx
\begin{bmatrix}
2.89 \\ 0.91
\end{bmatrix}=
\begin{bmatrix}
w_0 \\w_1
\end{bmatrix}
$$

#### 3(b)

$$
y_i=w_0+w_1x_i+w_2x_i^2,\quad\text{for $i\in\{1,\cdots,6\}$}
$$

$$
\mathbf{X}=
\begin{bmatrix}
1 & 2 & 2^2 \\ 1 & 3 & 3^2 \\ 1 & 4 & 4^2 \\ 1 & 5 & 5^2 \\ 1 & 6 & 6^2 \\ 1 & 7 & 7^2
\end{bmatrix},
\quad
\mathbf{y}=
\begin{bmatrix}
5 \\ 6 \\ 5 \\ 9 \\ 7 \\ 10
\end{bmatrix}
$$

$$
\mathbf{w}=(\mathbf{X}^{\intercal}\mathbf{X})^{-1}\mathbf{X}^{\intercal}\mathbf{y}
\approx
\begin{bmatrix}
4.74 \\ -0.05 \\ 0.11
\end{bmatrix}=
\begin{bmatrix}
w_0 \\w_1 \\ w_2
\end{bmatrix}
$$

#### 3(c)

$$
\textrm{MSE}=\frac{1}{2N}\sum_{i=1}^{N}(y-\hat{y})^2
$$

In 3(a) with a linear model:
$$
\textrm{MSE}\approx0.62
$$
In 3(b) with a nonlinear model:
$$
\textrm{MSE}\approx0.58
$$

#### 3(d)

Overfitting.

#### 4. Predicting Commute Times

#### 4(a)

| Given                   | Predict                         |
| ----------------------- | ------------------------------- |
| Distance to city center | Commute time to the city center |
| Weekday or weekend      |                                 |

$$
y=w_0+w_1x_{dist}+w_2x_{weekd}+\varepsilon
$$

* $w_0$: bias term.
* $x_{dist}$: real feature for distance.
* $x_{weekd}$: boolean feature for weekday or weekend.
* $\varepsilon$: noise term.

**First trial:**

* Introduce 7 boolean features for Monday, Tuesday, ..., Sunday.
* For each data point, exactly one of these features is 1.

Implications:

* Columns of data matrix are linearly dependent.
* $\mathbf{X}^{\intercal}\mathbf{X}$ is not invertible.

**Better approach:**

* Introduce 6 boolean features for Monday, Tuesday, ..., Saturday.
* For each data point, at most one of these features is 1.
* If all these features are 0, it means Sunday.

Model:
$$
y=w_0+w_1x_{dist}+w_2x_{mon}+\cdots+w_7x_{sat}+\varepsilon
$$

#### 4(b)

Introduce a Boolean feature $x_{vehicle}$:
$$
x_{vehicle}=
\begin{cases}
1, & \text{car is used} \\
0, & \text{bus is used}
\end{cases}
$$
Model:
$$
y=w_0+w_1x_{dist}+w_2x_{mon}+\cdots+w_7x_{sat}+w_8x_{vehicle}+\varepsilon
$$
**How to make suggestions?**

* Train the model.
* For given $x_{dist},x_{mon},\cdots,x_{sat}$, predict with $x_{vehicle}=1$ and with $x_{vehicle}=0$.
* Suggest cat of prediction with $x_{vehicle}=1$ is better than prediction with $x_{vehicle}=0$.

#### 4(c)

Use a model for each time frame.

**How to make suggestions?**

* Train the model.
* For given $x_{dist},x_{mon},\cdots,x_{sat}$, use each model to predict the commute time within a specific time frame.
* Suggest time frame $i$ if $y_{ti}$ predicts the lowest commute time.

#### 5. Predicting Jogging Times

#### 5(a)

$$
x_{t+1}=w_0+w_1x_t+w_2x_{t-1}+\varepsilon
$$

#### 5(b)

$$
\Delta_{t+1}=w_0+w_1x_t+w_2x_{t-1}+\varepsilon
$$

Note that $\Delta_{t+1}:=x_{t+1}-x_t$.

#### 5(c)

$$
\Delta_{t+1}=w_0+w_1\Delta_{t}+\varepsilon
$$

#### 5(d)

$$
\Delta_{t+1}=w_0+w_1x_t+w_2\Delta_{t}+\varepsilon
$$



#### 6. The Huber Loss in a Linear Regression Setting

Huber loss function:
$$
h_{\lambda,\mu}(z)=
\begin{cases}
\lambda\left(|z|-\frac{\lambda}{4\mu} \right), & \textrm{if $|z|\geq\frac{\lambda}{2\mu}$} \\
\mu z^2, & \textrm{otherwise}
\end{cases}
$$
Absolute loss function:
$$
f(z)=|z|
$$
Square loss function:
$$
g(z)=z^2
$$

#### 6(a)

$$
h_{4,1}(z)=
\begin{cases}
4(|z|-1), & \textrm{if $|z|>2$} \\
z^2, & \textrm{otherwise}
\end{cases}
$$

