---
title: 복소수(Complex number)
date: 2025-02-21
tags:
---
대수학에서는 실수체 만으로 이론을 전개하기 어려울 때가 많다. 예를 들어, $x^2 + 1 = 0$처럼 실수 계수를 갖는 다항식 중에서 실수 범위에서 해를 갖지 않는 경우가 있기 때문이다. 이러한 이유로, 모든 비영(非零)차수의 다항식이 그 계수를 가진 집합에서 해를 갖도록 하는 확장이 필요하다. 즉, 실수의 집합을 확장하여 이러한 조건을 만족하는 새로운 수 체계를 구축할 수 있다.

## 복소수(Complex number) 
복소수(Complex number)는 다음과 같은 꼴의 표현을 갖는 수이다. 

$$
z = a + bi
$$

여기서 $a, b$는 실수이며, 각각 실수 부분(real part)과 허수 부분(imaginary part)이라고 부른다.

### 복소수의 덧셈과 곱셈
복소수 $z = a + bi$와 $w = c + di$에 대해, 두 복소수의 합(Sum)과 곱(Product)은 각각 다음과 같이 정의된다. 

- 덧셈 (Addition)

$$
z + w = (a + bi)+ (c + di)= (a + c)+ (b + d)i
$$

- 곱셈 (Multiplication)

$$
zw = (a + bi)(c + di)= (ac - bd)+ (bc + ad)i
$$
## 실수를 복소수로 확장하기 
어떤 실수 $c$도 복소수로 간주할 수 있다. 즉, $c$를 복소수 $c + 0i$와 동일한 것으로 보면, 실수의 연산이 복소수의 연산과 자연스럽게 일치함을 확인할 수 있다. 
$$
\begin{gather*}
(c + 0i)+ (d + 0i)= (c + d)+ 0i \\\\
(c + 0i)(d + 0i)= cd + 0i
\end{gather*}
$$
따라서, 실수의 덧셈과 곱셈은 복소수의 덧셈과 곱셈의 특수한 경우로 볼 수 있다.

### 허수의 정의
$bi = 0 + bi$ 형태의 복소수를 허수(imaginary number)라고 한다. 이때, $b$는 $0$이 아닌 실수이다. 두 허수의 곱은 실수가 됨을 보이자. 

$$
(bi)(di)= (0 + bi)(0 + di)= (0 - bd)+ (b\cdot 0 + 0\cdot d)i = -bd
$$

특히, 허수 단위 $i$에 대해 

$$
i \cdot i = -1
$$

이는 복소수 곱셈의 정의를 기억하는 중요한 성질이 된다. 
즉, 복소수를 곱할 때 일반적인 다항식 전개처럼 계산하고, 
$i^2 = -1$로 대체하면 된다.

### 덧셈과 곱셈에 대한 항등원 
- 덧셈 항등원 : 복소수에서 $0$은 덧셈 항등원(identity)역할을 한다.
 $$
 (a + bi)+ 0 = (a + bi)+ (0 + 0i)= (a+0)+ (b+0)i = a + bi.
 $$

- 곱셈 항등원 : 복소수에서 $1$은 곱셈 항등원 역할을 한다.
 $$
 (a + bi)\cdot 1 = (a + bi)(1 + 0i)= (a\cdot1 - b\cdot0)+ (b\cdot1 + a\cdot0)i = a + bi.
 $$

### 복소수의 덧셈 역원과 곱셈 역원 
- 덧셈 역원 : 복소수 $a + bi$의 덧셈 역원은 $-a - bi$이다. 

$$
(a + bi)+ (-a - bi)= 0.
$$

- 곱셈 역원 : $0$이 아닌 복소수 $a + bi$의 곱셈 역원은 다음과 같이 주어진다.
 $$
 (a + bi)^{-1} = \frac{a}{a^2 + b^2} - \frac{b}{a^2 + b^2} i.
 $$

복소수의 역수를 구하려면 켤레 복소수를 이용하여 분모를 실수로 만들면 된다.

결국 복소수는 덧셈, 곱셈, 뺄셈, 나눗셈에 대해 닫혀 있으며, 교환법칙, 결합법칙, 분배법칙이 성립하므로 체(Field)를 만족한다.

## 복소수의 켤레 (Complex Conjugate) 
복소수 $a + bi$의 켤레 복소수(complex conjugate)는 $a - bi$이다. 복소수 $z$의 켤레는 $\overline{z}$로 표기한다.

### 켤레 복소수의 성질
복소수 $z, w$에 대해 다음 성질들이 성립한다.

1. 켤레 연산의 자기역성(Self-involution)
  $$
  \overline{\overline{z}} = z
  $$

2. 덧셈에 대한 성질[^1] [^3]
  $$
  \overline{z + w} = \overline{z} + \overline{w}
  $$

3. 곱셈에 대한 성질[^2]  
  $$
  \overline{zw} = \overline{z} \cdot \overline{w}
  $$

4. 나눗셈에 대한 성질 (단, $w \neq 0$) 
  $$
  \overline{\left(\frac{z}{w}\right)} = \frac{\overline{z}}{\overline{w}}
  $$

5. $z$가 실수일 필요충분 조건 
  $$
  z \text{가 실수} \iff \overline{z} = z
  $$

### 증명 (Proofs) 

- (2)덧셈에 대한 성질 증명 
 $$
 z = a + bi, \quad w = c + di.
 $$
 
 $$
.
 $$
 $$

 $$

- (3)곱셈에 대한 성질 증명 
 $$
 zw = (a + bi)(c + di).
 $$
 전개하면,
 $$
 zw = ac - bd + (ad + bc)i.
 $$
 이를 켤레 연산하면,
 $$
 \overline{zw} = (ac - bd)- (ad + bc)i.
 $$
 한편,
 $$
 \overline{z} = a - bi, \quad \overline{w} = c - di.
 $$
 따라서,
 $$
 \overline{z} \cdot \overline{w} = (a - bi)(c - di).
 $$
 전개하면,
 $$
 = ac - adi - bci + bd(-1).
 $$
 $$
 = ac - bd - (ad + bc)i.
 $$
 즉,
 $$
 \overline{zw} = \overline{z} \cdot \overline{w}.
 $$

### 켤레 복소수와 절댓값(모듈러스)관계 
어떤 복소수 $z = a + bi$에 대해, $z \overline{z}$는 항상 실수이고 0 이상이다. 
$$
z \overline{z} = (a + bi)(a - bi)
$$
전개하면,
$$
= a^2 - abi + abi - b^2i^2
$$
$$
= a^2 + b^2
$$

이제, 이를 이용하여 복소수의 절댓값을 정의할 수 있다.

### 복소수의 절댓값 (Absolute Value or Modulus) 

정의 (Definition) 
복소수 $z = a + bi$의 절댓값(absolute value)또는 모듈러스(modulus)는 다음과 같이 정의된다. 
$$
|z| = \sqrt{a^2 + b^2}
$$

이 값은 유클리드 거리(Euclidean norm)와 동일하며, 복소수 평면에서 원점과 $z$ 사이의 거리를 나타낸다.

[^1]: $z + w = (a + bi)+ (c + di)= (a + c)+ (b + d)i = = (a - bi)+ (c - di)= \overline{z} + \overline{w}$
[^2]: $\overline{z + w} = (a + c)- (b + d)i$