---
tags:

---
## 로피탈의 법칙
함수 $f(x),~g(x)$가 미분 가능, $\lim_{x \rightarrow a}\frac{f(x)}{g(x)}$가 부정형 $\left( \frac{0}{0},~\frac{\infty}{\infty},~\cdots \right)$, $\lim_{x \rightarrow a}\frac{f'(x)}{g'(x)}$ 존재, $g'(x) \not= 0$ 을 만족하면 $\lim_{x \rightarrow a}\frac{f(x)}{g(x)}=\lim_{x \rightarrow a}\frac{f'(x)}{g'(x)}$이다.

$$
\lim_{x \rightarrow a}\frac{f(x)}{g(x)}=\lim_{x \rightarrow a}\frac{f'(x)}{g'(x)}
$$
## 최고차항 비교
$$
\begin{align*}
&\lim_{x \rightarrow \infty} \frac{a_{n}x^{n} + a_{n-1}x^{n-1} + \cdots + a_{1}x + a_{0}}{b_{n}x^{n} + b_{n-1}x^{n-1} + \cdots + b_{1}x + b_{0}} = \lim_{x \rightarrow \infty} \frac{n!a_{n}}{n!b_{n}} = \frac{a_{n}}{b_{n}}\\
&\lim_{x \rightarrow \infty} \frac{a_{n}x^{n} + a_{n-1}x^{n-1} + \cdots + a_{1}x + a_{0}}{b_{n-1}x^{n-1} + \cdots + b_{1}x + b_{0}} = \frac{n!a_{n} x+(n-1)!a_{n-1}}{(n-1)!b_{n-1}} = \infty\\
&\lim_{x \rightarrow \infty} \frac{a_{n-1}x^{n-1} + \cdots + a_{1}x + a_{0}}{b_{n}x^{n} + b_{n-1}x^{n-1} + \cdots + b_{1}x + b_{0}} = \lim_{x \rightarrow \infty} \frac{(n-1)!a_{n}}{n!b_{n}x + (n-1)!b_{n}} = 0
\end{align*}
$$

## 최저차항 비교
$$
\begin{align*}
&\lim_{x \rightarrow 0} \frac{a_{n}x^{n} + a_{n-1}x^{n-1} + \cdots + a_{1}x}{b_{n}x^{n} + b_{n-1}x^{n-1} + \cdots + b_{1}x}\\
= &\lim_{x \rightarrow 0} \frac{na_{n}x^{n-1} + (n-1)a_{n-1}x^{n-2} + \cdots + a_{1}}{nb_{n}x^{n-1} + (n-1)b_{n-1}x^{n-2} + \cdots + b_{1}}\\
 = &\frac{a_{1}}{b_{1}}
\end{align*}

$$

## 초월함수 비교
- 지수함수는 다항함수보다 빠르다.
$$
\lim_{x \rightarrow \infty} \frac{e^{x}}{x} = \lim_{x \rightarrow \infty} \frac{e^{x}}{1} = \infty
$$

- 다항함수는 로그함수보다 빠르다.
$$
\lim_{x \rightarrow \infty} \frac{\ln x}{x} = \lim_{x \rightarrow \infty} \frac{1}{x} = 0
$$
