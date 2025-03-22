정수 $a (\neq 0)$, $b \in \mathbb{Z}$ 에 대해, 어떤 정수 $c$ 가 존재하여

$$
b = a c
$$

이면, "$b$는 $a$로 나누어진다" 라고 말하며, $a$ 를 $b$ 의 약수(divisor) 라고 한다.  
또한, $b$ 를 $a$ 의 배수(multiple) 라고 한다.  

만약 $b = a c$ 를 만족하는 $c$ 가 없을 때, " $a$ 는 $b$ 를 나누지 못한다" 라고 하며, $a \not\mid b$ 로 표시한다.

## 약수와 배수의 성질

임의의 $a, b, c, x, y \in \mathbb{Z}$ 에 대하여 다음이 성립한다.

1. $a \mid 0$ [^1]
2. $1 \mid a$ [^2]
3. $a \mid a$ [^3]
4. $a \mid 1 \Rightarrow a = \pm 1$ [^4]
5. $a \mid b$, $c \mid d \Rightarrow ac \mid bd$ [^5]
6. $a \mid b$, $b \mid c \Rightarrow a \mid c$ [^6]
7. $a \mid b$, $b \mid a \Rightarrow a = \pm b$ [^7]
8. $a \mid b$, $b \neq 0 \Rightarrow |a| \leq |b|$ [^8]
9. $a \mid b$, $a \mid c \Rightarrow a \mid (bx + cy)$ [^9]




## 예제

1. 위의 정리를 증명하여라.

2. $a$ 가 정수일 때, $0 \mid a$ 이면 $a = 0$ 임을 증명하여라. [^10]

3. $a, b, c$ 가 모두 $0$이 아닌 정수일 때, $ac \mid bc$ 이면 $a \mid b$ 임을 증명하라. [^11]

4. $a \mid b$ 이면 $ac \mid bc$ 임을 증명하여라. [^12]

[^1]: $a \times 0 = 0$ 이므로 $a \mid 0$이다.
[^2]: $a \times 1 = a$ 이므로 $1 \mid a$이다.
[^3]: $a \times 1 = a$ 이므로 $a \mid a$이다.
[^4]: 어떤 정수 $k$ 에 대해 $1 = a \cdot k$ 라고 하자. $a$ 와 $k$ 는 정수이므로, 가능한 값은 $(a, k) = (1, 1)$ 또는 $(-1, -1)$ 뿐이다. 따라서, $a = \pm1$이다.
[^5]: 어떤 정수 $k, m$ 에 대해 $b = ak$, $d = cm$ 이라고 하자. 그러면, $bd = (ak)(cm) = ac(km)$ 이므로, $ac \mid bd$ 이 성립한다.
[^6]: 어떤 정수 $k$ 에 대해 $b = ak$ 이고, $c = bl$ 이라고 하자. 그러면, $c = bl = akl$ 이므로, $a \mid c$ 이 성립한다.
[^7]: 어떤 정수 $k, m$ 에 대해 $b = ak$, $a = bm$ 이라고 하자. 그러면, $a = bm = akm$ 이므로, $1 = km$ 이 되어 $k = m = 1$ 또는 $k = m = -1$ 이다. 따라서, $a = \pm b$ 이 성립한다.
[^8]: 어떤 정수 $k$ 에 대해 $b = ak$ 이고, $b \neq 0$ 이라고 하자. 그러면, $|a||k| = |b|$ 이다. $k \neq 0$ 이므로 $|k| \geq 1$이고 따라서 $|a| \leq |b|$ 이 성립한다.
[^9]: 어떤 정수 $k, m$ 에 대해 $b = ak$, $c = am$ 이라고 하자. 그러면, $bx + cy = a(kx + my)$ 이므로, $a \mid (bx + cy)$ 이 성립한다.
[^10]: $0 = a \cdot k$ 이므로 $a = 0$ 이다.
[^11]:  $ac \mid bc$ 라면, $bc = kac$을 만족하는 어떤 정수 $k$ 가 존재한다. $c \not= 0$ 이므로, 양변을 $c$ 로 나누면 $b = ka$가 성립한다. 따라서, $b$ 는 $a$ 의 배수가 된다.
[^12]: $a \mid b$ 라면, $b = ka$를 만족하는 어떤 정수 $k$ 가 존재한다. 양변에 $c \not= 0$를 곱하면 $bc = kac$ 이므로, $ac \mid bc$ 이다.