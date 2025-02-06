---
tags:
  - 함수
  - 변곡점
share_link: https://share.note.sx/sj5t098s#bywlSE3V4wkTWWHp/Zqk2NdtqBXMOg4/nk+Wc3/Mh+M
share_updated: 2025-01-01T21:42:12+09:00
---
```tikz
\begin{document}
\begin{tikzpicture}[scale=0.9]
  % 첫 번째 그래프: y = x^2 and y = 1, y = 0, y = -1
  \begin{scope}[shift={(0,0)}]
    \draw[black, line width=1.5pt,smooth] plot[domain=-1.5:1.5] (\x,{\x*\x-0.5});
    \draw[blue, line width=1.5pt,smooth] (-2,0.5) -- (2,0.5);
    \draw[teal, line width=1.5pt,smooth] (-2,-0.5) -- (2,-0.5);
    \draw[red, line width=1.5pt,smooth] (-2,-1.5) -- (2,-1.5);
  \end{scope}

  % 두 번째 그래프: y = x^3 + x
  \begin{scope}[shift={(5.5,0)}]
    \draw[red, line width=1.5pt,smooth] plot[domain=-1:1] (\x,{\x*\x*\x+\x});
    \fill (0,0) circle (2pt);
  \end{scope}

  % 세 번째 그래프: y = x^3
  \begin{scope}[shift={(11,0)}]
    \draw[teal, line width=1.5pt,smooth] plot[domain=-1.26:1.26] (\x,{\x*\x*\x});
    \fill (0,0) circle (2pt);
  \end{scope}

  % 네 번째 그래프: y = x(x-1)(x+1)
  \begin{scope}[shift={(16.5,0)}]
    \draw[blue, line width=1.5pt,smooth] plot[domain=-1.52:1.52] (\x,{\x*(\x-1)*(\x+1)});
    \fill (0,0) circle (2pt);
  \end{scope}
\end{tikzpicture}
\end{document}
```
삼차 함수는 도함수의 근의 개수에 따라 총 $3$가지로 분류된다. 삼차 함수는 항상 **점대칭**이며, 이때 대칭점(변곡점)의 $x$좌표는 $x=-\frac{b}{3a}$이므로 근과 계수와의 관계에 의해 삼차 함수 세 근의 평균값과 일치한다. 즉, **삼차함수의 모든 근의 합은 대칭점(변곡점)의 $x$좌표의 $3$배와 같다.**

```tikz
\begin{document}
\begin{tikzpicture}[scale=1.5]
  % 첫 번째 그래프
  \begin{scope}[shift={(0,0)}]
    \draw[black, line width=1.5pt] plot[domain=-1.4:1.4, smooth] (\x,{\x*(\x-1)*(\x+1)+1.5});
    \draw[red, line width=1pt,smooth] (-2,0.7) -- (2,0.7);
    \draw[teal, line width=1pt,smooth] (-2,1.1) -- (2,1.1);
    \draw[blue, line width=1pt,smooth] (-2,1.5) -- (2,1.5);
    \fill[red] (-1.265,0.7) circle (1.5pt);
    \fill[teal] (0.6,1.1) circle (1.5pt);
    \fill[teal] (-1.15,1.1) circle (1.5pt);
    \fill[blue] (1,1.5) circle (1.5pt);
    \fill[blue] (0,1.5) circle (1.5pt);
    \fill[blue] (-1,1.5) circle (1.5pt);
  \end{scope}
  
  % 두 번째 그래프
  \begin{scope}[shift={(4.5,0)}]
    \draw[->] (-2,0) -- (2,0) node[right] {$x$};

    % 함수: 파란색 x(x-1)(x+1)+1.5
    \draw[black, line width=1.5pt] plot[domain=-1.4:1.4, smooth] (\x,{\x*(\x-1)*(\x+1)+1.5});

    % 함수: 검정색 y = 0.26x + 2.05
    \draw[blue] plot[domain=-1.8:1.8, smooth] (\x,{0.26*\x + 2.05});

    % 함수: 검정색 y = 0.26x + 0.95
    \draw[blue] plot[domain=-1.8:1.8, smooth] (\x,{0.26*\x + 0.95});

    % 점들
    \fill (-0.65,1.88) circle (1.5pt);
    \fill (0.65,1.12) circle (1.5pt);
    \fill (-1.3,0.61) circle (1.5pt);
    \fill (1.3,2.39) circle (1.5pt);
    \fill (0,1.5) circle (1.5pt);
    \fill (-0.65,0) circle (1pt);
    \fill (0.65,0) circle (1pt);
    \fill (-1.3,0) circle (1pt);
    \fill (1.3,0) circle (1pt);
    \fill (0,0) circle (1pt);

    % 수선의 발
    \draw[dashed] (-0.65,1.88) -- (-0.65,0);
    \draw[dashed] (0.65,1.12) -- (0.65,0);
    \draw[dashed] (-1.3,0.61) -- (-1.3,0);
    \draw[dashed] (1.3,2.39) -- (1.3,0);
    \draw[dashed] (0,1.5) -- (0,0);

	\node at (-0.975,0) {\rotatebox{90}{$=$}};
	\node at (0.325,0) {\rotatebox{90}{$=$}};
	\node at (-0.325,0) {\rotatebox{90}{$=$}};
	\node at (0.975,0) {\rotatebox{90}{$=$}};
  \end{scope}
  
  % 세 번째 그래프
  \begin{scope}[shift={(9,0)}]
    \draw[->] (-2,0) -- (2,0) node[right] {$x$};

    % 함수: 파란색 x(x-1)(x+1)+1.5
    \draw[black, line width=1.5pt] plot[domain=-1.4:1.4, smooth] (\x,{\x*(\x-1)*(\x+1)+1.5});

    % 함수: 검정색 y = 0.26x + 2.05
    \draw[blue] plot[domain=-1.8:1.8, smooth] (\x,{0.26*\x + 2.05});
    \draw[blue] plot[domain=-1.8:1.8, smooth] (\x,{0.26*\x + 0.95});
    \draw[blue] plot[domain=-1.8:1.8, smooth] (\x,{0.26*\x + 1.5});

    % 점들
    \fill (-0.65,1.88) circle (1.5pt);
    \fill (0.65,1.12) circle (1.5pt);
    \fill (-1.12,1.2) circle (1.5pt);
    \fill (1.12,1.8) circle (1.5pt);
    \fill (0,1.5) circle (1.5pt);
    \fill (-0.65,0) circle (1pt);
    \fill (0.65,0) circle (1pt);
    \fill (-1.12,0) circle (1pt);
    \fill (1.12,0) circle (1pt);
    \fill (0,0) circle (1pt);

    % 수선의 발
    \draw[dashed] (-0.65,1.88) -- (-0.65,0);
    \draw[dashed] (0.65,1.12) -- (0.65,0);
    \draw[dashed] (-1.12,1.2) -- (-1.12,0);
    \draw[dashed] (1.12,1.8) -- (1.12,0);
    \draw[dashed] (0,1.5) -- (0,0);
    
	\draw[dashed, rounded corners=20pt] (0,0) -- (-0.325,0.3) -- (-0.65,0);
	\draw[dashed, rounded corners=20pt] (0,0) -- (-0.56,-0.3) -- (-1.12,0);
	\draw[dashed, rounded corners=20pt] (0,0) -- (0.325,0.3) -- (0.65,0);
	\draw[dashed, rounded corners=20pt] (0,0) -- (0.56,-0.3) -- (1.12,0);

	\node[above] at (-0.325,0.1) {$1$};
	\node[above] at (0.325,0.1) {$1$};
	\node[below] at (-0.56,-0.15) {$\sqrt3$};
	\node[below] at (0.56,-0.15) {$\sqrt3$};
  \end{scope}
\end{tikzpicture}
\end{document}

```
#### 삼차 함수의 근의 개수
- 근이 $1$개 인 경우 : (극댓값) $\times$ (극솟값) $> 0$
- 근이 $2$개 인 경우 : (극댓값) $\times$ (극솟값) $= 0$
- 근이 $3$개 인 경우 : (극댓값) $\times$ (극솟값) $< 0$

#### 삼차 함수의 비율관계
- 극값에서 접선을 그었을 때, 변곡점을 기준으로 접선과 삼차 함수가 만나는 점들의 $x$좌표 사이의 길이는 같다.
- 변곡점을 지나는 직선을 그리고, 그 직선에 평행한 직선이 삼각함수와 접할 때 $x$좌표의 각 교점의 비율은 $1:\sqrt3$이다.  

#### 삼차함수의 넓이와 극값
```tikz
\begin{document}
\begin{tikzpicture}

    \draw[->] (-3,0) -- (3,0) node[right] {$x$};

	\draw[domain=-2.1:2.5,smooth,variable=\x,black, line width=1.5pt] plot (\x,{(\x+2)*(\x-0.5)*(\x-2)*(1/2)});

    \fill[blue, opacity=0.2] (0.5,0) -- plot[domain=0.5:2] (\x,{(\x+2)*(\x-0.5)*(\x-2)*(1/2)}) -- (2,0) -- cycle;

    \node[below] at (-2.21,0) {$\alpha$};
	\node[below] at (0.3,0) {$\beta$};
	\node[below] at (2.2,0) {$\gamma$};
	\node[above] at (-0.75,0.2) {$m$};
	\node[above] at (1.25,0.2) {$l$};
	\node at (1.3,-0.4) {$S_1$};
	
    \fill (-2,0) circle (2pt);
    \fill (0.5,0) circle (2pt);
    \fill (2,0) circle (2pt);

	\draw[dashed, rounded corners=20pt] (-2,0) -- (-0.75,0.3) -- (0.5,0);
	\draw[dashed, rounded corners=20pt] (0.5,0) -- (1.25,0.3) -- (2,0);

    \begin{scope}[shift={(6.5,0.5)}]
	\draw[->] (-3,0) -- (3,0) node[right] {$x$};

    % Function plot (x-1)(x+1)
    \draw[domain=-2.5:2.5,smooth,variable=\x,black, line width=1.5pt] plot (\x,{(\x+1.5)^2*(\x-2)*(1/5)});

    % Fill area between the plot and the x-axis
    \fill[blue, opacity=0.2] (-1.5,0) -- plot[domain=-1.5:2] (\x,{(\x+1.5)^2*(\x-2)*(1/5)}) -- (2,0) -- cycle;

    % Roots with labels
    \node[below] at (-1,0) {$\alpha$};
    \node[below] at (1,0) {$\beta$};


    % Dots at roots
    \filldraw (-1.5,0) circle (2pt);
    \filldraw (2,0) circle (2pt);
        \end{scope}

\begin{scope}[shift={(13,0)}]
    \draw[->] (-3,0) -- (3,0) node[right] {$x$};

    % 함수: 파란색 x(x-1)(x+1)+1.5
    \draw[black, line width=1.5pt] plot[domain=-2.4:1.55, smooth] (\x,{(1/2)*\x*(\x-1)*(\x+2)+1});

    % 점들
    \fill (-1.22,2.06) circle (2pt);
    \fill (0.55,0.68) circle (2pt);
    \fill (-1.22,0) circle (1.5pt);
    \fill (0.55,0) circle (1.5pt);

    % 수선의 발
    \draw[dashed] (-1.22,2.06) -- (-1.22,0);
    \draw[dashed] (0.55,0.68) -- (0.55,0);
    \draw[dashed] (-2.5,2.06) -- (3,2.06);
    \draw[dashed] (-2.5,0.68) -- (3,0.68);
    \draw[dashed] (2,0.68) -- (2,2.06);
    
    \node[below] at (-1.22, 0) {$\alpha$};
    \node[below] at (0.55, 0) {$\beta$};
    \node[above] at (-1.22, 2.06) {$f(\alpha)$};
    \node[right] at (0.7, 0.5) {$f(\beta)$};
    \node[right] at (1.2, 1.37) {$f(\alpha)-f(\beta)$};
    
  \end{scope}

\end{tikzpicture}
\end{document}
```

- 삼차 함수의 세 근 $\alpha,~\beta,~\gamma$을 가질 때, $S_1$의 넓이는 $\frac{|a|(l+2m)l^3}{12}$이다.
- 삼차 함수의 두 근이 $\alpha,~\beta$을가질 때, $S_2$의 넓이는 $\frac{|a||\beta - \alpha|^4}{12}$이다.
- 삼차 함수의 극값의 $x$좌표를 각각 $\alpha,~\beta$라 할 때, $|f(\alpha)-f(\beta)|=\frac{|a||\beta - \alpha|^3}{2}$이다. 

#### 삼차 함수의 변곡점
삼차 함수 $f(x)=ax^{3} + bx^{2} + cx + d$에서 $f ''(x)=6ax+2b=0$인 $x=-\frac{b}{3a}$이다. 따라서 삼차 함수는 변곡점이 한 개 존재한다. 임의의 양수 $t$에 대하여 $f\left(-\frac{b}{3a} + t\right) + f\left(-\frac{b}{3a} - t\right) = 2f\left(-\frac{b}{3a}\right)$가 성립하므로 삼차 함수 $f(x)$는 변곡점에 대하여 대칭이다.

#### 삼차 함수의 비율
삼차 함수는 변곡점에 대해 대칭이므로 변곡점을 원점이라 해도 일반성을 잃지 않는다. 또한 $x$좌표만 관찰할 것이므로 최고차항의 계수를 $1$이라 해도 마찬가지로 일반성을 잃지 않는다. 따라서 삼차 함수를 $f(x) = x^3 - ax$라 두자. 삼차 함수 위의 한 점 $x=-t$에서 접선의 방정식은 $l(x) = (3t^2 - a)x + 2t^3$이며, $f(x) - l(x) = x^3 - 3t^2x - 2t^3 = (x + t)^2(x - 2t)$이므로, 접선과 함수의 교점의 $x$좌표는 $-t$와 $2t$이다. 그러므로 원점(변곡점)을 기준으로 평행한 두 접선과의 교점과 변곡점의 $x$좌표는 $1:1:1:1$의 비율이 성립한다.

#### 삼각 함수 극값의 차
삼차 함수 $f(x) = ax^3 + bx^2 + cx + d$의 극값의 차는 도함수와 $x$축으로 둘러싸인 넓이와 일치하므로 $f'(x) = 3ax^2 + 2bx + c$의 두 근 $\alpha$, $\beta$에서의 넓이와 같다. 따라서 삼차 함수의 극댓값과 극솟값의 차는 $\int_{\alpha}^{\beta} |3a(x - \alpha)(x - \beta)| \, dx = \frac{|a||\beta - \alpha|^3}{2}$이다. 이는 이차 함수의 넓이 공식을 이용하면 직관적으로 유도할 수 있다.

#### 변곡점에서의 순간변화율
삼차 함수에서 변곡점의 순간변화율과 같은 임의의 두 점에서의 평균변화율은 존재하지 않는다.  삼차 함수 위에 적당한 두 점이 존재하여 그 두 점의 평균변화율이 변곡점의 순간변화율과 같아진다면 변곡점에서의 접선이 평행이동한 함수와 원함수가 만나는 두 점이 존재한다. 그런데, $f(x) = ax^3 + bx^2 + cx + d$의 변곡점 $t=-\frac{b}{3a}$에 접선을 $l(x) = (3at^2 + 2bt + x)(x - t) + at^3 + bt^2 + cx + d$라 하면, $f(x) - l(x) = a(x - t)^3$이다. 따라서 $l(x)$를 평행이동한 $l(x) + p$에 대하여, $f(x) - l(x) - p = a(x - t)^3 - p$이므로, 모순이 생긴다. 따라서 삼차 함수에서 변곡점의 순간변화율과 같은 임의의 두 점에서의 평균변화율은 존재하지 않는다.

#### 삼차 함수 바깥에서 그은 접
```tikz

```
