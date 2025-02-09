![[cubic 1.svg]]

삼차 함수는 도함수의 근의 개수에 따라 총 $3$가지로 분류된다. 삼차 함수는 항상 **점대칭**이며, 이때 대칭점(변곡점)의 $x$좌표는 $x=-\frac{b}{3a}$이므로 근과 계수와의 관계에 의해 삼차 함수 세 근의 평균값과 일치한다. 즉, **삼차함수의 모든 근의 합은 대칭점(변곡점)의 $x$좌표의 $3$배와 같다.**[^1]

## 삼차 함수의 근의 개수
- 근이 $1$개 인 경우 : (극댓값) $\times$ (극솟값) $> 0$
- 근이 $2$개 인 경우 : (극댓값) $\times$ (극솟값) $= 0$
- 근이 $3$개 인 경우 : (극댓값) $\times$ (극솟값) $< 0$

![[cubic 2.svg|300]]
## 삼차 함수의 비율관계
- 극값에서 접선을 그었을 때, 변곡점을 기준으로 접선과 삼차 함수가 만나는 점들의 $x$좌표 사이의 길이는 같다.[^2]

![[cubic 4.svg|300]]
- 변곡점을 지나는 직선을 그리고, 그 직선에 평행한 직선이 삼각함수와 접할 때 $x$좌표의 각 교점의 비율은 $1:\sqrt3$이다.

![[cubic 3.svg|300]]

## 삼차함수의 넓이와 극값

- 삼차 함수의 세 근 $\alpha,~\beta,~\gamma$을 가질 때, $S_1$의 넓이는 $\frac{|a|(l+2m)l^3}{12}$이다.

![[cubic 5.svg|300]]

- 삼차 함수의 두 근이 $\alpha,~\beta$을가질 때, $S_2$의 넓이는 $\frac{|a||\beta - \alpha|^4}{12}$이다.

![[cubic 6.svg|300]]

- 삼차 함수의 극값의 $x$좌표를 각각 $\alpha,~\beta$라 할 때, $|f(\alpha)-f(\beta)|=\frac{|a||\beta - \alpha|^3}{2}$이다. [^3]

![[cubic 7.svg|300]]

## 변곡점에서의 순간변화율
삼차 함수에서 변곡점의 순간변화율과 같은 임의의 두 점에서의 평균변화율은 존재하지 않는다.  삼차 함수 위에 적당한 두 점이 존재하여 그 두 점의 평균변화율이 변곡점의 순간변화율과 같아진다면 변곡점에서의 접선이 평행이동한 함수와 원함수가 만나는 두 점이 존재한다. 그런데, $f(x) = ax^3 + bx^2 + cx + d$의 변곡점 $t=-\frac{b}{3a}$에 접선을 $l(x) = (3at^2 + 2bt + x)(x - t) + at^3 + bt^2 + cx + d$라 하면, $f(x) - l(x) = a(x - t)^3$이다. 따라서 $l(x)$를 평행이동한 $l(x) + p$에 대하여, $f(x) - l(x) - p = a(x - t)^3 - p$이므로, 모순이 생긴다. 따라서 삼차 함수에서 변곡점의 순간변화율과 같은 임의의 두 점에서의 평균변화율은 존재하지 않는다. (삼차함수의 변곡점은 평균값 정리의 역이 성립하지 않는 반례다.)

[^1]: 삼차 함수 $f(x)=ax^{3} + bx^{2} + cx + d$에서 $f ''(x)=6ax+2b=0$인 $x=-\frac{b}{3a}$이다. 따라서 삼차 함수는 변곡점이 한 개 존재한다. 임의의 양수 $t$에 대하여 $f\left(-\frac{b}{3a} + t\right) + f\left(-\frac{b}{3a} - t\right) = 2f\left(-\frac{b}{3a}\right)$가 성립하므로 삼차 함수 $f(x)$는 변곡점에 대하여 대칭이다.
[^2]: 삼차 함수는 변곡점에 대해 대칭이므로 변곡점을 원점이라 해도 일반성을 잃지 않는다. 또한 $x$좌표만 관찰할 것이므로 최고차항의 계수를 $1$이라 해도 마찬가지로 일반성을 잃지 않는다. 따라서 삼차 함수를 $f(x) = x^3 - ax$라 두자. 삼차 함수 위의 한 점 $x=-t$에서 접선의 방정식은 $l(x) = (3t^2 - a)x + 2t^3$이며, $f(x) - l(x) = x^3 - 3t^2x - 2t^3 = (x + t)^2(x - 2t)$이므로, 접선과 함수의 교점의 $x$좌표는 $-t$와 $2t$이다. 그러므로 원점(변곡점)을 기준으로 평행한 두 접선과의 교점과 변곡점의 $x$좌표는 $1:1:1:1$의 비율이 성립한다.
[^3]: 삼차 함수 $f(x) = ax^3 + bx^2 + cx + d$의 극값의 차는 도함수와 $x$축으로 둘러싸인 넓이와 일치하므로 $f'(x) = 3ax^2 + 2bx + c$의 두 근 $\alpha$, $\beta$에서의 넓이와 같다. 따라서 삼차 함수의 극댓값과 극솟값의 차는 $\int_{\alpha}^{\beta} |3a(x - \alpha)(x - \beta)| \, dx = \frac{|a||\beta - \alpha|^3}{2}$이다. 이는 이차 함수의 넓이 공식을 이용하면 직관적으로 유도할 수 있다.