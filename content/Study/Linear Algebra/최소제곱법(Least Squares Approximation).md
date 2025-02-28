---
title: 최소제곱법(Least Squares Approximation)
date: 2025-02-28
tags:
---
## 최소제곱 근사 (Least Squares Approximation)
한 실험자가 측정값 $y_1, y_2, \dots, y_m$ 을 시간 $t_1, t_2, \dots, t_m$ 에서 수집한다고 하자.

![[least square.webp|400]]

데이터 $(t_1, y_1), (t_2, y_2), \dots, (t_m, y_m)$ 이 평면상의 점으로 표시되어 있다고 가정하자. 우리는 $y$ 와 $t$ 사이에 본질적으로 선형적인 관계가 존재한다고 느낀다. 

$$
y = ct + d
$$

와 같은 관계가 존재한다고 가정하고, 이 방정식에서 상수 $c$ 와 $d$ 를 찾아서 주어진 데이터에 대해 최적의 적합(fit)을 이루는 직선을 구하고자 한다. 

이러한 적합도를 평가하는 한 가지 방법은, 데이터 점들로부터 직선까지의 수직 거리의 제곱합을 나타내는 오차 $E$ 를 계산하는 것이다.

$$
E = \sum_{i=1}^{m} (y_i - c t_i - d)^2
$$

이제 행렬 표현을 도입하자.

$$
A = \begin{pmatrix} 
t_1 & 1 \\ 
t_2 & 1 \\ 
\vdots & \vdots \\ 
t_m & 1 
\end{pmatrix}, 
\quad 
x = \begin{pmatrix} 
c \\ 
d 
\end{pmatrix}, 
\quad 
y = \begin{pmatrix} 
y_1 \\ 
y_2 \\ 
\vdots \\ 
y_m 
\end{pmatrix}
$$

라고 하면, 오차는 다음과 같이 표현할 수 있다.

$$
E = \| y - Ax \|^2
$$

우리는 이제 일반적인 방법을 사용하여 $E$ 를 최소화하는 명시적인 벡터 $x_0 \in F^n$ 을 찾고자 한다. 즉, 주어진 $m \times n$ 행렬 $A$ 에 대해,

$$
\| y - Ax_0 \| \leq \| y - Ax \|
$$

가 모든 벡터 $x \in F^n$ 에 대해 성립하는 $x_0$ 을 찾는다. 

## 최소제곱 해를 찾는 방법
$A$ 를 $m \times n$ 행렬, $y$ 를 $F^m$ 의 원소로 두고, 집합

$$
W = \{ Ax : x \in F^n \}
$$

를 정의하자. 즉, $W$ 는 $A$ 에 의해 생성된 열 공간(column space) $R(L_A)$ 이다. 

![[projection.webp|400]]

벡터 $y$가 행렬 $A$의 열공간 $W$에 속하지 않는 경우, $y$ 에 가장 가까운 벡터가 $W$ 안에 유일하게 존재한다. 이 벡터를 $u=Ax_0$ 라 하자. 여기서 $x_0$ 는 $F^n$ 의 원소이다. 

그러면

$$
\| Ax_0 - y \| \leq \| Ax - y \|, \quad \forall x \in F^n
$$

가 성립한다. 즉, $x_0$ 는

$$
E = \| Ax_0 - y \|
$$

를 최소화하는 성질을 갖는다. 이제 이러한 $x_0$ 를 찾는 실용적인 방법을 개발하고자 한다. 

$$
Ax_0 - y \in W^\perp
$$

가 성립하므로,

$$
\langle Ax, Ax_0 - y \rangle_m = 0, \quad \forall x \in F^n
$$

이 된다. 내적의 정의에 의해

$$
\langle x, A^*(Ax_0 - y) \rangle_n = 0, \quad \forall x \in F^n
$$

즉,

$$
A^*(Ax_0 - y) = 0
$$

이 된다. 결국, 우리는 다음 방정식을 만족하는 $x_0$ 를 찾으면 된다.

$$
A^* A x_0 = A^* y
$$

추가로, $A$ 의 랭크가 $n$ 이라고 가정하면,

$$
x_0 = (A^* A)^{-1} A^* y
$$

를 얻는다. 이제 이 내용을 다음의 정리로 요약할 수 있다.

### 정리
$A \in M_{m \times n}(F)$ 및 $y \in F^m$ 에 대하여, 다음을 만족하는 $x_0 \in F^n$ 이 존재한다.

$$
(A^* A) x_0 = A^* y
$$

또한,

$$
\| Ax_0 - y \| \leq \| Ax - y \|, \quad \forall x \in F^n
$$

가 성립한다. 

추가적으로, 만약 $\text{rank}(A) = n$ 이라면,

$$
x_0 = (A^* A)^{-1} A^* y
$$

이 성립한다.