## 테일러 급수
함수 $f$가 $a \in \mathbb{R}$에서 여러번 미분 가능할 때, 다항함수로 근사한 식을 테일러급수라고 부른다. 
$$
\begin{align*}
T_f(x) &= \sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!} (x-a)^n \\
&= f(a) + f'(a)(x-a) + \frac{1}{2!} f''(a)(x-a)^2 + \frac{1}{3!} f'''(a)(x-a)^3 +\cdots\\
\end{align*}
$$
  특히, $a=0$일 때의 테일러급수를 매클로린급수라고 부른다.
$$
\begin{align*}
M_f(x) &= \sum_{n=0}^{\infty} \frac{f^{(n)}(0)}{n!} x^n \\
&= f(0) + f'(0)x + \frac{1}{2} f''(0)x^2 + \frac{1}{3!} f'''(0)x^3 + \cdots
\end{align*}
$$

## 여러 가지 함수의 매클로린 급수
$$
\begin{align*}
\sin(x) &= x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \cdots\\
\cos(x) &= 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \cdots\\
\tan(x) &= x - \frac{x^3}{3} + \frac{2x^5}{15} - \frac{17x^7}{315} + \cdots\\
\exp(x) &= 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \cdots\\
\ln(1+x) &= x - \frac{x^2}{2} + \frac{x^3}{3} - \frac{x^4}{4} + \cdots\\
\frac{1}{1-x} &= 1 + x + x^2 + x^3 + \cdots
\end{align*}
$$

## 테일러 급수의 의미있는 결과
 테일러 급수와 로피탈의 결과를 응용하면 $x \rightarrow 0$일 때, 다음과 같은 결과를 얻을 수 있다.
$$
\begin{align*}
ax &~= ~\sin(ax) ~=~\tan(ax) ~=~ \ln(1 + ax)~ =~ e^{ax} - 1\\
\frac{1}{2} (ax)^2 &~=~ 1 - \cos(ax) ~=~ \sec(ax) - 1 \\
\frac{1}{2} (ax)^3 &~=~ \tan(ax) - \sin(ax)
\end{align*}
$$
