---
tags:
  - 연속
  - 함수
  - -1
---
>[!Tip] 연속의 정의
>$$\lim_{x \rightarrow a}f(x) = f(a)$$
함수 $f(x)$가 실수 $a$에 대하여 $x=a$에서 의 좌극한, 우극한, 함숫값이 같으면 연속이라 한다. 연속은 ‘함수가 이어져있음‘을 의미하지 않는다는 점을 유의하자.

>[!Note] 연속의 성질 연속함수 $f(x), ~g(x)$에 대하여, 
> 1. $f(x) \pm g(x)$도 연속이다.
> 2. $f(x) \times g(x)$도 연속이다.
> 3. $\frac{f(x)}{g(x)}$도 연속이다. (단, $g(x) \not= 0$)
> 4. 역함수가 존재한다면, $f^{-1}(x)$도 연속이다.
> 5. 함수가 잘 정의된다면, $f(g(x)),~ g(f(x))$도 연속이다.
> 6. $\lim_{x \rightarrow a} {f(x)=f( \lim _{x \rightarrow a} {x} )} =f(a)$ 
연속 함수가 갖는 가장 큰 의미는 극한과 함수가 서로 교환될 수 있다는 점이다.

연속 함수$f(x)$와 불연속 함수 $g(x)$를 연산했을 때 연속이 되는 조건을 정리해보자.

```tikz
\begin{document}
\begin{tikzpicture}[scale=1.8]

    % Axis
    \draw[->] (-2.5,0) -- (2.5,0) node[right] {$x$};
    \draw[->] (0,-1.3) -- (0,1.3) node[above] {$y$};

    % Ticks
    \foreach \x in {-2,-1,1,2}
      \draw (\x,1pt) -- (\x,-3pt)
      node[anchor=north] {$\x$};
    \foreach \y in {-1,1}
      \draw (1pt,\y) -- (-3pt,\y) 
      node[anchor=east] {$\y$};
    \filldraw (0,0) node[below left] {$O$};

    % Function f(x)
    \draw[blue, line width=2pt] (-2,1) -- (-1,0);
    \draw[blue, line width=2pt] (-1,0) -- (1,0);
    \draw[blue, line width=2pt] (1,0) -- (2,1);
    \filldraw[blue] (-2,1) circle (2pt);
    \filldraw[blue] (2,1) circle (2pt);
    \draw[dashed] (-2,1) -- (2,1);
    \draw[dashed] (-2,0) -- (-2,1);
    \draw[dashed] (2,0) -- (2,1);
    \node at (0, -1.6) {$f(x)$};
  
    % Function g(x)
    \begin{scope}[shift={(5.5,0)}]
        \draw[->] (-2.5,0) -- (2.5,0) node[right] {$x$};
        \draw[->] (0,-1.3) -- (0,1.3) node[above] {$y$};

        % Ticks
        \foreach \x in {-2,-1,1,2}
          \draw (\x,1pt) -- (\x,-3pt)
          node[anchor=north] {$\x$};
        \foreach \y in {-1,1}
          \draw (1pt,\y) -- (-3pt,\y) 
          node[anchor=east] {$\y$};
        \filldraw (0,0) node[below left] {$O$};

        % Function g(x)
        \draw[orange, line width=2pt] (-2,0) -- (-1,0);
        \draw[orange, line width=2pt] (-1,0) -- (0,-1);
        \draw[orange, line width=2pt] (0,1) -- (1,0);
        \draw[orange, line width=2pt] (1,0) -- (2,0);
        \filldraw[orange] (-2,0) circle (2pt);
        \filldraw[orange] (2,0) circle (2pt);
        \filldraw[orange] (0,0) circle (2pt);
        \filldraw[orange] (0,1) circle (2pt);
        \filldraw[orange] (0,-1) circle (2pt);
		\filldraw[white] (0,1) circle (1.5pt);
		\filldraw[white] (0,-1) circle (1.5pt);
		\node at (0, -1.6) {$g(x)$};
    \end{scope}
\end{tikzpicture}
\end{document}
```

#### 1. $f(x)g(x)$는 $x=0$에서 연속인가?
$$\begin{array}{c|c|c|c}
& f (x) & g(x) & f(x)g(x) \\ \hline
x=0+ & 0 & 1- & 0 \\ \hline
x=0- & 0 & -1+ & 0 \\ \hline
x=0 & 0 & 0 & 0  \\
\end{array}$$
  $g(x)$는 $x=0$에서 불연속이므로 좌극한, 우극한, 함숫값이 서로 다르다. 반면에 $f(x)$는 연속이므로 $x=0$에서 좌극한, 우극한, 함숫값이 같다. 이 두 함수을 곱해서 같은 좌극한, 우극한, 함숫값이 같기위해서는 $f(0)=0$이어야만 한다.

#### 2. $f(g(x))$는 $x=0$에서 연속인가?
$$\begin{array}{c|c|c}
& g(x) & f(g(x)) \\ \hline
x=0+ & 1- & 0 \\ \hline
x=0- & -1+ & 0  \\ \hline
x=0 & 0 & 0   \\
\end{array}$$
$f(x)$는 연속이므로 연속 함수의 성질에 의해 $\lim_{x \rightarrow a} f(x) = f( \lim_{x \rightarrow a} g(x) )$이다. 따라서 $f(g(a+))=f(g(a-))=f(g(a))$이면 $x=a$에서 $f(g(x))$가 연속이다. 쉽게 설명하면 $g(x)$그래프에서 불연속일 때의 $y$값들에 대해 $f(y)$의 값이 모두 같으면 연속이다.

#### 3. $g(f(x))$는 $x=0$에서 연속인가?
$$\begin{array}{c|c|c}
& f (x) & g(f(x)) \\ \hline
x=0+ & 0 & 0 \\ \hline
x=0- & 0 & 0  \\ \hline
x=0 & 0 & 0   \\
\end{array}$$
이 경우에는 정석으로 찾는 방법이 간단하긴 하지만 되도록 합성함수의 그래프를 그려서 전체적으로 판단하는 것이 좋다. 예를 들어 $f(x)$의 치역은 $1$에서 $0$을 지나 다시 $1$로 이동한다. 이를 $g(x)$에 정의역에 넣어 보면 $x=1$에서 $x=0$으로 갈 때는 연속이지만 $x=0$인 순간 불연속이 된다. 같은 방법으로 $x=0$에서 $x=1$로 이동할 때 다시 불연속이므로 $g(f(x))$의 불연속점이 $2$개라는 것을 직관적으로 찾아낼 수 있어야 한다.

>[!tip] 연속함수와 불연속함수의 연산
>1. $g(x)$가 불연속인 점에서 $f(x)$의 함숫값이 $0$이면 $f(x)g(x)$는 연속이다.
>2. $f(g(a+))=f(g(a-))=f(g(a))$이면 $f(g(x))$는 연속이다.
>3. $f(x)$의 함숫값이 $g(x)$의 불연속인 정의역 값을 지나지 않으면 $g(f(x))$는 연속이다.

#### 4. 발산하는 불연속 함수와의 곱셈$^\dagger$
함수 $g(x) = \begin{cases} \frac{1}{x^2 - 1} & (x \neq \pm 1) \\ 2 & (x = \pm 1) \end{cases}$ 에 대하여 함수 $f(x)g(x)$가 모든 실수에서 연속이게 하는 다항함수 $f(x)$의 조건을 구해보자.
```tikz
\begin{document}
\begin{tikzpicture}
    % Axes
    \draw[->] (-3,0) -- (3,0) node[right] {$x$};
    \draw[->] (0,-3) -- (0,3) node[above] {$y$};

    % Ticks and labels
    \foreach \x in {-2,-1,1,2}
	    \draw (\x,1pt) -- (\x,-3pt) node[anchor=north] {$\x$};
	\foreach \y in {-2,-1,1,2}
	    \draw (1pt,\y) -- (-3pt,\y) node[anchor=east] {$\y$};
	\filldraw (0,0) node[below left] {$O$};

    % Function g(x)
    \draw[domain=-2.99:-1.15,smooth,variable=\x,blue, line width=1pt] plot ({\x},{1/(\x*\x-1)});
    \draw[domain=-0.82:0.82,smooth,variable=\x,blue, line width=1pt] plot ({\x},{1/(\x*\x-1)});
    \draw[domain=1.15:2.99,smooth,variable=\x,blue, line width=1pt] plot ({\x},{1/(\x*\x-1)});
	
    % Points of discontinuity for g(x)
    \fill[blue] (1,2) circle (2pt);
    \fill[blue] (-1,2) circle (2pt);

    % Asymptotes
    \draw[dashed, thin, gray] (1,3) -- (1,-3);
    \draw[dashed, thin, gray] (-1,3) -- (-1,-3);

    % Label for g(x)
    \node at (3,0.5) {$g(x)$};

% Table in a scope with shift
    \begin{scope}[shift={(8,0)}]
        % Scale the table up a bit
        \begin{scope}
            \draw (0,0) node {
                \scalebox{1.3}{
                $\begin{array}{c|c|c|c}
                & f(x) & g(x) & f(x)g(x) \\ \hline
                x=0+ & 0 & \infty & ? \\ \hline
                x=0- & 0 & -\infty & ? \\ \hline
                x=0 & 0 & 2 & 0 \\ 
                \end{array}$}
            };
        \end{scope}
    \end{scope}
\end{tikzpicture}
\end{document}
```

이 문제는 곱함수의 연속성을 묻는 질문이므로 앞서 본 것과 같이 $g(x)$가 불연속인 $x$값에 대하여 $f(x)=0$이어야 한다. 그런데 앞선 경우에는 $g(x)$의 극한값이 존재했지만, 이번 경우에는 발산하므로  $f(x)=0$인 조건으로는 부족하다. 예를들어 $f(x)=x^2-1$로 둔다면, $f(x)g(x) = \begin{cases} 1 & (x \neq \pm 1) \\ 2(x^2 - 1) & (x = \pm 1) \end{cases}$이다. 이 함수는 $x=1$에서 극한값은 $1$이지만 함숫값은 $0$이므로 불연속이다. 따라서 극한값도 $0$으로 수렴하게 만들기 위해서는 $g(x)$가 $x=1$에서 무한대로 발산하는 속도보다 더 빠른 속도로 $0$으로 수렴해야 한다. 이를 정리하면 $f(x)=(x-1)^n(x+1)^mQ(x),$ $(n,~m>1)$이다.

#### 예제
1. $f(x) = \begin{cases} x & (x \in \mathbb{Q}) \\ 0 & (x \in \mathbb{Q}^c) \end{cases}$는 $x=0$에서 연속인가?
2. $f(x) = \begin{cases} x \sin (\frac{1}{x}) & (x \not= 0) \\ 0 & (x =0) \end{cases}$는 $x=0$에서 연속인가? 나아가 미분가능한가?
3. 실수 전체의 집합에서 정의된 함수 $y=f(x)$의 그래프는 그림과 같고, 삼차함수 $g(x)$는 최고차항의 계수가 $1$이고, $g(0)=3$이다. 합성함수 $(g\circ f)(x)$가 실수 전체의 집합에서 연속일 때, $g(3)$의 값은?

```tikz
\begin{document}
\begin{tikzpicture}
    % Axes for the first plot
    \begin{scope}[scale=1.5]
        \draw[->] (-1.3,0) -- (1.3,0) node[right] {$x$};
        \draw[->] (0,-1.3) -- (0,1.3) node[above] {$y$};
        
        \draw[domain=-1:1,smooth,variable=\x, line width=1.5pt,dotted] plot ({\x},{\x});
        \draw[domain=-1:1,smooth,variable=\x, line width=1.5pt,dotted] plot ({\x},{0});
        \node at (0,-1.5) {$1$};
    \end{scope}

    % Second plot for f(x) = x sin(1/x)
    \begin{scope}[shift={(5,0)}, scale=1.5] % shift the second plot to the right
        \draw[->] (-1.3,0) -- (1.3,0) node[right] {$x$};
        \draw[->] (0,-1.3) -- (0,1.3) node[above] {$y$};
        
        \foreach \y in {-1,1} \draw (1pt,\y) -- (-1pt,\y) node[anchor=east] {$\y$};
        
		\draw[domain=-1.2:-0.01,smooth,variable=\x, line width=1pt, samples=100] plot ({\x},{(\x)*sin(deg(1/\x))});
		\draw[domain=0.01:1.2,smooth,variable=\x, line width=1pt, samples=100] plot ({\x},{(\x)*sin(deg(1/\x))});
		
        \fill (0,0) circle (1pt);
        \node at (0,-1.5) {$2$};
    \end{scope}

	\begin{scope}[shift={(10,0)}, scale=1]
		\draw[->] (-2,0) -- (4,0) node[right] {$x$};
	    \draw[->] (0,-1.5) -- (0,2) node[above] {$y$};
	    
	    \draw[domain=-1.8:2,smooth,variable=\x, line width=1pt,] plot ({\x},{-(\x+1)*(\x-2)*(1/2)});
	    \draw[domain=2:3.8,smooth,variable=\x, line width=1pt,] plot ({\x},{(\x-3)*(\x)*(1/2)});
	    
	    \fill (0,0) circle (2pt) node[below left] {$O$};
	    \fill (2,0) circle (2pt) node[above] {$2$};
	    \fill (0,1) circle (2pt);
	    \fill[white] (0,1) circle (1pt);
	    \fill (2,-1) circle (2pt);
		\fill[white] (2,-1) circle (1pt);
	    \draw[dashed] (2,0) -- (2,-1);
	    \draw[dashed] (0,-1) -- (2,-1);
	    
	    \node at (0,-2.2) {$3$};
	    \node[left] at (0,-1) {$-1$};
	    \node[left] at (0,1) {$1$};
	\end{scope}
	
\end{tikzpicture}
\end{document}
```
4. 함수 $f(x) = \begin{cases} x^2-2x-1 & (x <1 ) \\ 1 & (x =1) \\ -x^2+2x+1 &(x>1) \end{cases}$에 대하여, $y=f(f(x))$의 불연속점의 개수는?