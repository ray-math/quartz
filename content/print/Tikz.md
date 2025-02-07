[[교란 (Derangement)]]
```tikz
\begin{document}
\begin{tikzpicture}
  % Ellipse for Set X
  \draw (0,0) ellipse (1cm and 2cm);
  \node at (0,2.2) {$X$};
  \draw (3,0) ellipse (1cm and 2cm);
  \node at (3,2.2) {$Y$};
  \node at (1.5,2.5) {$f$};

  % Nodes for elements of set X
  \node (x1) at (0,1.5) {1};
  \node (x2) at (0,1) {2};
  \node (x3) at (0,0.5) {3};
  \node (x4) at (0,0) {$\vdots$};
  \node (x5) at (0,-0.5) {$x$};
  \node (x6) at (0,-1) {$\vdots$};
  \node (x7) at (0,-1.5) {$n$};
  

  % Nodes for elements of set Y
  \node (y1) at (3,1.5) {1};
  \node (y2) at (3,1) {2};
  \node (y3) at (3,0.5) {3};
  \node (y4) at (3,0) {$\vdots$};
  \node (y5) at (3,-0.5) {$x$};
  \node (y6) at (3,-1) {$\vdots$};
  \node (y7) at (3,-1.5) {$n$};

  % Arrows
  \draw[->] (0.5,2.2) -- (2.5,2.2);
  \draw[->] (x1) -- (y2);
  \draw[->] (x2) -- (y3);
  \draw[->] (x3) -- (y4);
  \draw[->] (x4) -- (y5);
  \draw[->] (x5) -- (y6);
  \draw[->] (x6) -- (y7);
  \draw[->] (x7) -- (y1);
  
\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\begin{tikzpicture}
  % Ellipse for Set X
  \draw (0,0) ellipse (1cm and 2cm);
  \node at (0,2.2) {$X$};
  \draw (3,0) ellipse (1cm and 2cm);
  \node at (3,2.2) {$Y$};
  \node at (1.5,2.5) {$f$};

  % Nodes for elements of set X
  \node (x1) at (0,1.5) {1};
  \node (x2) at (0,1) {2};
  \node (x3) at (0,0.5) {3};
  \node (x4) at (0,0) {$\vdots$};
  \node (x5) at (0,-0.5) {$x$};
  \node (x6) at (0,-1) {$\vdots$};
  \node (x7) at (0,-1.5) {$n$};
  

  % Nodes for elements of set Y
  \node (y1) at (3,1.5) {1};
  \node (y2) at (3,1) {2};
  \node (y3) at (3,0.5) {3};
  \node (y4) at (3,0) {$\vdots$};
  \node (y5) at (3,-0.5) {$x$};
  \node (y6) at (3,-1) {$\vdots$};
  \node (y7) at (3,-1.5) {$n$};

  % Arrows
  \draw[->] (0.5,2.2) -- (2.5,2.2);
  \draw[->,blue,line width=1] (x1) -- (y5);
  \draw[->, teal,line width=1] (x5) -- (y7);
  
  \draw[orange, line width=1pt, rounded corners=1pt] (-0.4,1.2) rectangle (0.4,-1.7);
  \node[orange, left] at (-0.5,0) {$!(n-1)$};

\begin{scope}[shift={(8,0)}]
 \draw (0,0) ellipse (1cm and 2cm);
  \node at (0,2.2) {$X$};
  \draw (3,0) ellipse (1cm and 2cm);
  \node at (3,2.2) {$Y$};
  \node at (1.5,2.5) {$f$};

  % Nodes for elements of set X
  \node (x1) at (0,1.5) {1};
  \node (x2) at (0,1) {2};
  \node (x3) at (0,0.5) {3};
  \node (x4) at (0,0) {$\vdots$};
  \node (x5) at (0,-0.5) {$x$};
  \node (x6) at (0,-1) {$\vdots$};
  \node (x7) at (0,-1.5) {$n$};
  

  % Nodes for elements of set Y
  \node (y1) at (3,1.5) {1};
  \node (y2) at (3,1) {2};
  \node (y3) at (3,0.5) {3};
  \node (y4) at (3,0) {$\vdots$};
  \node (y5) at (3,-0.5) {$x$};
  \node (y6) at (3,-1) {$\vdots$};
  \node (y7) at (3,-1.5) {$n$};

  % Arrows
  \draw[->] (0.5,2.2) -- (2.5,2.2);
  \draw[->,blue, line width=1] (x1) -- (y5);
  \draw[->, teal, line width=1] (x5) -- (y1);
  
  \draw[orange, line width=1pt, rounded corners=1pt] (-0.4,1.2) rectangle (0.4,-0.3);
  \draw[orange, line width=1pt, rounded corners=1pt] (-0.4,-0.7) rectangle (0.4,-1.7);
  \node[orange, left] at (-0.5,0) {$!(n-2)$};
\end{scope}
\end{tikzpicture}
\end{document}
```

[[그래프 완전정복 1 - 기본]]
```tikz
\begin{document}
\begin{tikzpicture}[scale=1.2]
	%1
    \draw[-latex] (-1.5,0) -- (3,0) node[right] {$x$};
    \draw[-latex, dotted, line width=1pt] (0,-1.3) -- (0,1.7) node[above] {$y$};
    
    \draw[smooth, line width=1.5pt] plot[domain=-0.6:2.6] (\x,{(\x)^2*(\x-2)^2-1});
    
	\node at (-0.41,-0.3) [left] {$1-\sqrt2$};
	\node at (1,-0.1) [below] {$1$};
	\node at (2.41,-0.3) [right] {$1+\sqrt2$};

	\fill (-0.41,0) circle (1.5pt);
	\fill (1,0) circle (1.5pt);
	\fill (2.41,0) circle (1.5pt);

	%2
	\begin{scope}[shift={(5,0)}]

    \draw[-latex,dotted,line width=1pt] (-1.5,2) -- (3,2) node[right] {$x$};
    
    \draw[smooth, orange, dotted, line width=1.5pt] plot[domain=-0.1:2.1] (\x,{4*\x*(\x-1)*(\x-2)+2});
    \draw[smooth, line width=1.5pt] plot[domain=-0.6:2.6] (\x,{(\x)^2*(\x-2)^2-1});
    
	\node[orange] at (0,1.7) [left] {$0$};
	\node[orange] at (0.9,1.9) [below] {$1$};
	\node[orange] at (2,1.7) [right] {$2$};
	\node at (2.1,3) [right, orange] {$f'(x)$};

	\fill[orange] (0,2) circle (1.5pt);
	\fill[orange] (1,2) circle (1.5pt);
	\fill[orange] (2,2) circle (1.5pt);

	\fill (0,-1) circle (1.5pt);
	\fill (1,0) circle (1.5pt);
	\fill (2,-1) circle (1.5pt);

	\draw[dashed] (0,2) -- (0,-1);
	\draw[dashed] (1,2) -- (1,0);
	\draw[dashed] (2,2) -- (2,-1);

	\end{scope}

	%3
	\begin{scope}[shift={(10,0)}]
	
	\draw[-latex] (-1.5,0) -- (3,0) node[right] {$x$};
    \draw[-latex] (0,-1.3) -- (0,1.7) node[above] {$y$};
    
    \draw[smooth, orange, line width=1.5pt, dotted] plot[domain=-0.6:2.6] (\x,{(\x)^2*(\x-2)^2});
    \draw[smooth, line width=1.5pt] plot[domain=-0.6:2.6] (\x,{(\x)^2*(\x-2)^2-1});
    
	\node[orange] at (0,-0.2) [left] {$0$};
	\node[orange] at (2.2,0) [below] {$2$};
	\node at (-0.2,-1) [left] {$-1$};

	\fill[orange] (0,0) circle (1.5pt);
	\fill[orange] (2,0) circle (1.5pt);
	\fill (0,-1) circle (1.5pt);
	
	\draw[dashed] (2,0) -- (2,-1);
	\draw[dashed] (0,-1) -- (2,-1);
	
	\end{scope}
	  
\end{tikzpicture}
\end{document}
```

[[그래프 완전정복 2 - 사칙연산]]
```tikz
\usepackage{tikz}
\usepackage{amsmath}
\begin{document}
\begin{tikzpicture}

    % 1
    \begin{scope}[scale=0.6, shift={(0,0)}]
        % 좌표축 그리기
        \draw[thick,->] (-3.5,0) -- (3.5,0) node[anchor=north west] {$x$};
        \draw[thick,->] (0,-3.5) -- (0,3.5) node[anchor=south east] {$y$};

        % y = 2x 그리기
        \draw[orange, thick, domain=-2.3:2.3] plot (\x, {2*\x}) node[right] {$y = 2x$};

        % y = x^2 그리기
        \draw[blue, thick, domain=-2.3:2.3] plot (\x, {\x*\x}) node[right] {$y = x^2$};

        % y = x^2 + 2x 그리기
        \draw[thick, domain=-3.3:1.3] plot (\x, {(\x*\x) + 2*\x}) node[left] {$y = x^2 + 2x$};

        % x = 0과 x = -2에서 점 찍기
        \fill (0, 0) circle (2pt) node[anchor=north west] {$O$};
        \fill (-2, 0) circle (2pt) node[anchor=north east] {$-2$};
        \fill(-2, 4) circle (2pt);
        \fill (-2, -4) circle (2pt);
        \draw[dashed] (-2,-4) -- (-2,4);
        \node at (-2,2) {=};
        \node at (-2,-2) {=};

        % 레이블 추가
        \node at (0,5.5) {};
        \node at (5.5,0) {};
    \end{scope}

    % 2
    \begin{scope}[scale=0.35, shift={(18,0)}]
        % 좌표축 그리기
        \draw[thick,->] (-8,0) -- (8,0) node[anchor=north west] {$x$};
        \draw[thick,->] (0,-8) -- (0,8) node[anchor=south east] {$y$};

        % y = sin(x) 그리기
        \draw[blue, thick, domain=-7:7, samples=100] plot (\x, {sin(\x r)}) node[right] {$y = \sin x$};

        % y = x 그리기
        \draw[orange, thick, domain=-7:7] plot (\x, {\x}) node[right] {$y = x$};

        % y = x + sin(x) 그리기
        \draw[thick, domain=-7:7, samples=100] plot (\x, {\x + sin(\x r)}) node[left] {$y = x + \sin x$};

        % x = 0과 x = -2에서 점 찍기
        \fill (0, 0) circle (2pt) node[anchor=north west] {$O$};
        \fill (-3.14, -3.14) circle (2pt);
        \fill (3.14, 3.14) circle (2pt);
        \fill (-6.28, -6.28) circle (2pt);
        \fill (6.28, 6.28) circle (2pt);
        \draw[dashed] (-3.14,0) -- (-3.14, -3.14);
        \draw[dashed] (3.14,0) -- (3.14, 3.14);
        \draw[dashed] (-6.28,0) -- (-6.28, -6.28);
        \draw[dashed] (6.28,0) -- (6.28, 6.28);

        \node[below] at (3.14,0) {$\pi$};
        \node[below] at (6.28,0) {$2\pi$};
        \node[above] at (-3.14,0) {$-\pi$};
        \node[above] at (-6.28,0) {$-2\pi$};

    \end{scope}

    % 3
    \begin{scope}[scale=0.6, shift={(22,0)}]
        % 좌표축 그리기
        \draw[thick,->] (-3.5,0) -- (3.5,0) node[anchor=north west] {$x$};
        \draw[thick,->] (0,-3.5) -- (0,3.5) node[anchor=south east] {$y$};

        % y = 2x 
        \draw[orange, thick, domain=-2:2.3] plot (\x, {2*\x}) node[right] {$y = 2x$};
        % y = 2x-1
        \draw[orange, dashed, domain=-1.5:2.7] plot (\x, {2*\x-1}) ; 


        % y = x^2 그리기
        \draw[blue, thick, domain=-2.3:2.3] plot (\x, {\x*\x}) node[right] {$y = x^2$};

        % y = x^2 - 2x 그리기
        \draw[thick, domain=-1.3:3.3] plot (\x, {(\x*\x) - 2*\x}) node[right] {$y = x^2 - 2x$};

        \fill[black] (0, 0) circle (2pt) node[anchor=north west] {$O$};
        \fill (2, 0) circle (2pt) node[anchor=north west] {$2$};
        \fill (2, 4) circle (2pt);
        \draw[dashed] (2,0) -- (2,4);

        \fill[orange] (1,1) circle (1pt);
        \fill[orange] (1,-1) circle (1pt);
        \draw[orange, dashed] (1,1) -- (1,-1);
    \end{scope}

\end{tikzpicture}
\end{document}
```

```tikz
\usepackage{tikz}
\usepackage{amsmath}

\begin{document}
\begin{tikzpicture}

    % 1그래프
    \begin{scope}[scale=0.7, shift={(0,0)}]
        % 좌표축 그리기
        \draw[thick,->] (-3.5,0) -- (3.5,0) node[anchor=north west] {$x$};
        \draw[thick,->] (0,-3.5) -- (0,3.5) node[anchor=south east] {$y$};

        % y = x 그리기
        \draw[blue, thick, domain=-3:3] plot (\x, {\x}) node[right] {$y = x$};

        % y = 1/x 그리기
		\draw[thick, smooth, domain=-3.3:-0.3] plot (\x, {1/\x}) ;
		\draw[thick, smooth, domain=0.3:3.3] plot (\x, {1/\x}) node[above] {$y = \frac{1}{x}$};

        \fill[black] (0, 0) circle (2pt) node[anchor=north west] {$O$};
    \end{scope}


    % 2그래프
    \begin{scope}[scale=0.7, shift={(10,0)}]
        % 좌표축 그리기
        \draw[thick,->] (-1.5,0) -- (5.5,0) node[anchor=north west] {$x$};
        \draw[thick,->] (0,-3.5) -- (0,3.5) node[anchor=south east] {$y$};

	% y = ln(x) 그리기
		\draw[blue, thick, smooth, domain=0.05:5] plot (\x, {ln(\x)}) node[right] {$y = \ln x$}; 
	% y = 1/ln(x) 그리기
		\draw[thick, smooth, domain=0.001:0.75] plot (\x, {1/ln(\x)}) ;
		\draw[thick, smooth, domain=1.3:5] plot (\x, {1/ln(\x)}) node[right] {$y = \frac{1}{\ln x}$};
		
	% 점과 레이블 찍기
		\fill[black] (0, 0) circle (2pt) node[anchor=north west] {$O$};
		\node[below right] at(1,0) {$1$};
	% 점근선 그리기
		\draw[dashed] (1,-3.5) -- (1,3.5);
	\end{scope}

   % 3
    \begin{scope}[scale=0.7, shift={(0,-9)}]
        % 좌표축 그리기
        \draw[thick,->] (-4.5,0) -- (4.5,0) node[anchor=north west] {$x$};
        \draw[thick,->] (0,-4.5) -- (0,4.5) node[anchor=south east] {$y$};

        % y = x 
        \draw[orange, thick, domain=-3.5:3.5] plot (\x, {\x}) node[right] {$y = x$};

        % y = x^2-4 그리기
        \draw[blue, thick, smooth, domain=-2.8:2.6] plot (\x, {\x*\x-4}) node[right] {$y = x^2-4$};

        % y = x^3 - 4x 그리기
        \draw[thick, smooth, domain=-2.4:2.4] plot (\x, {(\x*\x*\x) - 4*(\x)}) node[right] {$y = x^3 - 4x$};

        \fill (0, 0) circle (2pt) node[anchor=north west] {$O$};
        \fill (2, 0) circle (2pt) node[anchor=north west] {$2$};
        \fill (-2, 0) circle (2pt) node[anchor=north west] {$-2$};

    \end{scope}

    % 4
    \begin{scope}[scale=0.35, shift={(24,-18)}]
        % 좌표축 그리기
        \draw[thick,->] (-9,0) -- (9,0) node[anchor=north west] {$x$};
        \draw[thick,->] (0,-9) -- (0,9) node[anchor=south east] {$y$};

        % y = 1/x 그리기
        \draw[blue, thick, smooth, domain=-8:-0.15] plot (\x, {1/\x}) ;
        \draw[blue, thick, smooth, domain=0.15:8] plot (\x, {1/\x}) node[above] {$y = \frac{1}{x}$};

        % y = e^x 그리기
        \draw[orange, thick, smooth, domain=-8:2.2] plot (\x, {exp(\x)}) node[right] {$y = e^x$};

        % y = e^x/x 그리기
        \draw[thick, smooth, domain=0.15:3.2] plot (\x, {exp(\x)/\x}) node[right] {$y = \frac{e^x}{x}$};
        \draw[thick, smooth, domain=-8:-0.15] plot (\x, {exp(\x)/\x}) ;
		
	% 점과 레이블 찍기
		\fill[black] (0, 0) circle (2pt) node[anchor=north west] {$O$};

    \end{scope}
\end{tikzpicture}

\end{document}
```

[[그래프 완전정복 4 - 절댓값 함수, 가우스 함수]]

```tikz
\usepackage{pgfplots}

\begin{document}
\begin{tikzpicture}

    % 1
    \begin{scope}[scale=1, shift={(0,0)}]
        
        \begin{axis}[
            domain=-2:3.2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=middle,
        ]
        \addplot[blue,opacity=0.5, thick]{(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
    \end{scope}

   % 3
    \begin{scope}[scale=1, shift={(7.5,0)}]
        \begin{axis}[
            domain=-1:2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=middle,
        ]
        \addplot[orange, thick]{(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
        \begin{axis}[
            domain=-2:-1,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=none,
        ]
        \addplot[orange, thick]{-(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
        \begin{axis}[
            domain=2:3,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=none,
        ]
        \addplot[orange, thick]{-(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
        \begin{axis}[
            domain=3:3.2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=none,
        ]
        \addplot[orange, thick]{(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
    \end{scope}
\end{tikzpicture}
\end{document}


\end{tikzpicture}
\end{document}
```

```tikz
\usepackage{pgfplots}

\begin{document}
\begin{tikzpicture}

    % 1
    \begin{scope}[scale=1, shift={(0,0)}]
        
        \begin{axis}[
            domain=-2:3.2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=middle,
        ]
        \addplot[blue,opacity=0.5, thick]{(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
    \end{scope}

    % 2
    \begin{scope}[scale=1, shift={(7.5,0)}]
        \begin{axis}[
            domain=-1:2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=middle,
        ]
        \addplot[blue,opacity=0.5, thick]{(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
        \begin{axis}[
            domain=3:3.2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=none,
        ]
        \addplot[blue,opacity=0.5, thick]{(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
    \end{scope}

    % 3
    \begin{scope}[scale=1, shift={(15,0)}]
        \begin{axis}[
            domain=-1:2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=middle,
        ]
        \addplot[orange, thick]{(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
        \begin{axis}[
            domain=3:3.2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=none,
        ]
        \addplot[orange, thick]{(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
        \begin{axis}[
            domain=-1:2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=none,
        ]
        \addplot[orange, thick]{-(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
        \begin{axis}[
            domain=3:3.2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=none,
        ]
        \addplot[orange, thick]{-(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
    \end{scope}
\end{tikzpicture}
\end{document}
```

```tikz
\usepackage{pgfplots}

\begin{document}
\begin{tikzpicture}

    % 1
    \begin{scope}[scale=1, shift={(0,0)}]
        
        \begin{axis}[
            domain=-2:3.2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=middle,
        ]
        \addplot[blue,opacity=0.5, thick]{(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
    \end{scope}

    % 2
    \begin{scope}[scale=1, shift={(7.5,0)}]
        \begin{axis}[
            domain=0:3.2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=middle,
        ]
        \addplot[blue,opacity=0.5, thick]{(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
    \end{scope}

    % 3
    \begin{scope}[scale=1, shift={(15,0)}]
        \begin{axis}[
            domain=-3.2:0,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=middle,
        ]
        \addplot[orange, thick]{(1/5)*(-x+1)^3*(-x-2)*(-x-3)};
        \end{axis}
        \begin{axis}[
            domain=0:3.2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=none,
        ]
        \addplot[orange, thick]{(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
    \end{scope}
\end{tikzpicture}
\end{document}
```

```tikz
\usepackage{pgfplots}

\begin{document}
\begin{tikzpicture}

    % 1
    \begin{scope}[scale=1, shift={(0,0)}]
        
        \begin{axis}[
            domain=-2:3.2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=middle,
        ]
        \addplot[blue,opacity=0.5, thick]{(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
    \end{scope}

    % 2
    \begin{scope}[scale=1, shift={(7.5,0)}]
        \begin{axis}[
            domain=0:2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=middle,
        ]
        \addplot[blue,opacity=0.5, thick]{(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
        
        \begin{axis}[
            domain=3:3.2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=middle,
        ]
        \addplot[blue,opacity=0.5, thick]{(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
    \end{scope}

    % 3
    \begin{scope}[scale=1, shift={(15,0)}]
        \begin{axis}[
            domain=0:2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=middle,
        ]
        \addplot[orange, thick]{(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
        \begin{axis}[
            domain=3:3.2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=none,
        ]
        \addplot[orange, thick]{(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}

        \begin{axis}[
            domain=0:2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=middle,
        ]
        \addplot[orange, thick]{-(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
        \begin{axis}[
            domain=3:3.2,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=none,
        ]
        \addplot[orange, thick]{-(1/5)*(x+1)^3*(x-2)*(x-3)};
        \end{axis}
        
        \begin{axis}[
            domain=-2:0,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=middle,
        ]
        \addplot[orange, thick]{(1/5)*(-x+1)^3*(-x-2)*(-x-3)};
        \end{axis}
        \begin{axis}[
            domain=-3.2:-3,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=none,
        ]
        \addplot[orange, thick]{(1/5)*(-x+1)^3*(-x-2)*(-x-3)};
        \end{axis}

        \begin{axis}[
            domain=-2:0,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=middle,
        ]
        \addplot[orange, thick]{-(1/5)*(-x+1)^3*(-x-2)*(-x-3)};
        \end{axis}
        \begin{axis}[
            domain=-3.2:-3,
            xmin=-4, xmax=4,
            ymin=-4, ymax=4,
            smooth,
            axis lines=none,
        ]
        \addplot[orange, thick]{-(1/5)*(-x+1)^3*(-x-2)*(-x-3)};
        \end{axis}
    \end{scope}
\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\begin{tikzpicture}
    % draw axes
    \draw[->] (-4, 0) -- (4, 0) node[right] {$x$};
    \draw[->] (0, -4) -- (0, 4) node[above] {$y$};

    % replace 0 with O on the axes
    \node[below right] at (0, 0) {$O$};
    \node[orange, right] at (4,3) {$y = [x]$};

    % draw y=x line
    \draw[blue!50, thick] (-3.5, -3.5) -- (3.5, 3.5) node[right] {$y = x$};

    % draw y=[x] steps
    \foreach \i in {-3,...,3} {
        \draw[orange, very thick] (\i, \i) -- (\i+1, \i);
        \filldraw[orange] (\i, \i) circle (3pt);
        \draw[orange] (\i+1, \i) circle (3pt);
    }
    
    \draw[->, red!75, ultra thick] (1.25, 1.25) -- (1.25, 1);
    \draw[->, red!75, ultra thick] (1.5, 1.5) -- (1.5, 1);
    \draw[->, red!75, ultra thick] (1.75, 1.75) -- (1.75, 1);

    % draw ticks and labels
    \foreach \i in {-3,-2,-1,1,2,3} {
        \draw (\i, 0.1) -- (\i, -0.1) node[below, scale=0.8] {\i};
        \draw (0.1, \i) -- (-0.1, \i) node[left, scale=0.8] {\i};
    }

    % draw grid
    \draw[lightgray, very thin] (-3.5, -3.5) grid (3.5, 3.5);

\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\begin{tikzpicture}

	%1
    \begin{scope}[scale=1, shift={(0,0)}]
    % draw axes
    \draw[->] (-2.5, 0) -- (2.5, 0) node[right] {$x$};
    \draw[->] (0, -0.5) -- (0, 4.5) node[above] {$y$};

    \node[below right] at (0, 0) {$O$};

    % draw y=x^2 curve
    \draw[blue!50, thick, domain=-2.1:2.1, smooth] plot (\x, {\x*\x}) node[right] {$y = x^2$};
	\draw[teal, thick] (-2.5, 4) -- (2.5,4);
	\draw[teal, thick] (-2.5, 3) -- (2.5,3);
	\draw[teal, thick] (-2.5, 2) -- (2.5,2);
	\draw[teal, thick] (-2.5, 1) -- (2.5,1);
	\draw[teal, thick] (-2.5, 0) -- (2.5,0);

    \filldraw[teal!50] (-2, 4) circle (2.5pt);
    \filldraw[teal!50] (-1.732, 3) circle (2.5pt);
    \filldraw[teal!50] (-1.414, 2) circle (2.5pt);
    \filldraw[teal!50] (-1, 1) circle (2.5pt);
    \filldraw[teal!50] (0, 0) circle (2.5pt);
    \filldraw[teal!50] (2, 4) circle (2.5pt);
    \filldraw[teal!50] (1.732, 3) circle (2.5pt);
    \filldraw[teal!50] (1.414, 2) circle (2.5pt);
    \filldraw[teal!50] (1, 1) circle (2.5pt);


    % draw ticks and labels
    \foreach \i in {-2,-1,1,2} {
        \draw (\i, 0.1) -- (\i, -0.1) node[below, scale=0.8] {\i};
    }
    \foreach \i in {1,2,3,4} {
        \draw (0.1, \i) -- (-0.1, \i) node[left, scale=0.8] {\i};
    }

    % draw grid
    \draw[lightgray, thin] (-2.5, -0.5) grid (2.5, 4.5);
    \end{scope}[scale=1, shift={(0,0)}]

	%2
    \begin{scope}[scale=1, shift={(6.5,0)}]
    % draw axes
    \draw[->] (-2.5, 0) -- (2.5, 0) node[right] {$x$};
    \draw[->] (0, -0.5) -- (0, 4.5) node[above] {$y$};

    % replace 0 with O on the axes
    \node[below right] at (0, 0) {$O$};

    % draw y=x^2 curve
    \draw[blue!50, thick, domain=-2.1:2.1, smooth] plot (\x, {\x*\x}) node[right] {$y = x^2$};

    % draw y=[x] steps
    \draw[orange, very thick] (-2.3, 4) -- (-2, 4);
    \filldraw[orange] (-2, 4) circle (3pt);
    \draw[orange] (-2.3, 4) circle (3pt);
    
    \draw[orange, very thick] (-2, 3) -- (-1.732, 3);
    \filldraw[orange] (-1.732, 3) circle (3pt);
    \draw[orange] (-2, 3) circle (3pt);

    \draw[orange, very thick] (-1.732, 2) -- (-1.414, 2);
    \filldraw[orange] (-1.414, 2) circle (3pt);
    \draw[orange] (-1.732, 2) circle (3pt);

    \draw[orange, very thick] (-1.414, 1) -- (-1, 1);
    \filldraw[orange] (-1, 1) circle (3pt);
    \draw[orange] (-1.414, 1) circle (3pt);

    \draw[orange, very thick] (-1, 0) -- (1, 0);
    \draw[orange] (-1, 0) circle (3pt);
    \draw[orange] (1, 0) circle (3pt);
    \filldraw[orange] (0, 0) circle (3pt);

    \draw[orange, very thick] (2.3, 4) -- (2, 4);
    \filldraw[orange] (2, 4) circle (3pt);
    \draw[orange] (2.3, 4) circle (3pt);
    
    \draw[orange, very thick] (2, 3) -- (1.732, 3);
    \filldraw[orange] (1.732, 3) circle (3pt);
    \draw[orange] (2, 3) circle (3pt);

    \draw[orange, very thick] (1.732, 2) -- (1.414, 2);
    \filldraw[orange] (1.414, 2) circle (3pt);
    \draw[orange] (1.732, 2) circle (3pt);

    \draw[orange, very thick] (1.414, 1) -- (1, 1);
    \filldraw[orange] (1, 1) circle (3pt);
    \draw[orange] (1.414, 1) circle (3pt);

    \draw[->, red!75, ultra thick] (1.2, 1.44) -- (1.2, 1);
    \draw[->, red!75, ultra thick] (1.3, 1.69) -- (1.3, 1);

    
    % draw the last point
    \filldraw[orange] (2, 4) circle (3pt);

    % draw ticks and labels
    \foreach \i in {-2,-1,1,2} {
        \draw (\i, 0.1) -- (\i, -0.1) node[below, scale=0.8] {\i};
    }
    \foreach \i in {1,2,3,4} {
        \draw (0.1, \i) -- (-0.1, \i) node[left, scale=0.8] {\i};
    }

    % draw grid
    \draw[lightgray, thin] (-2.5, -0.5) grid (2.5, 4.5);
    \end{scope}

	%3
    \begin{scope}[scale=1, shift={(13,0)}]
    % draw axes
    \draw[->] (-2.5, 0) -- (2.5, 0) node[right] {$x$};
    \draw[->] (0, -0.5) -- (0, 4.5) node[above] {$y$};

    % replace 0 with O on the axes
    \node[below right] at (0, 0) {$O$};
    \node[orange, right] at (2.5,4) {$y = [x^2]$};

    % draw y=[x] steps
    \draw[orange, very thick] (-2.3, 4) -- (-2, 4);
    \filldraw[orange] (-2, 4) circle (3pt);
    \draw[orange] (-2.3, 4) circle (3pt);
    
    \draw[orange, very thick] (-2, 3) -- (-1.732, 3);
    \filldraw[orange] (-1.732, 3) circle (3pt);
    \draw[orange] (-2, 3) circle (3pt);

    \draw[orange, very thick] (-1.732, 2) -- (-1.414, 2);
    \filldraw[orange] (-1.414, 2) circle (3pt);
    \draw[orange] (-1.732, 2) circle (3pt);

    \draw[orange, very thick] (-1.414, 1) -- (-1, 1);
    \filldraw[orange] (-1, 1) circle (3pt);
    \draw[orange] (-1.414, 1) circle (3pt);

    \draw[orange, very thick] (-1, 0) -- (1, 0);
    \draw[orange] (-1, 0) circle (3pt);
    \draw[orange] (1, 0) circle (3pt);

    \draw[orange, very thick] (2.3, 4) -- (2, 4);
    \filldraw[orange] (2, 4) circle (3pt);
    \draw[orange] (2.3, 4) circle (3pt);
    
    \draw[orange, very thick] (2, 3) -- (1.732, 3);
    \filldraw[orange] (1.732, 3) circle (3pt);
    \draw[orange] (2, 3) circle (3pt);

    \draw[orange, very thick] (1.732, 2) -- (1.414, 2);
    \filldraw[orange] (1.414, 2) circle (3pt);
    \draw[orange] (1.732, 2) circle (3pt);

    \draw[orange, very thick] (1.414, 1) -- (1, 1);
    \filldraw[orange] (1, 1) circle (3pt);
    \draw[orange] (1.414, 1) circle (3pt);

    
    % draw the last point
    \filldraw[orange] (2, 4) circle (3pt);

    % draw ticks and labels
    \foreach \i in {-2,-1,1,2} {
        \draw (\i, 0.1) -- (\i, -0.1) node[below, scale=0.8] {\i};
    }
    \foreach \i in {1,2,3,4} {
        \draw (0.1, \i) -- (-0.1, \i) node[left, scale=0.8] {\i};
    }

    % draw grid
    \draw[lightgray, thin] (-2.5, -0.5) grid (2.5, 4.5);
    \end{scope}

\end{tikzpicture}
\end{document}
```

[[그래프 완전정복 5 - 합성함수]]
```tikz
\usepackage{pgfplots}
\begin{document}

\begin{tikzpicture}[scale=1.2]
%1
\begin{scope}
    \begin{axis}[
        grid=both,
        major grid style={line width=.2pt,draw=gray!40},
        xmin=-1, xmax=8,
        ymin=-1, ymax=8,
        xtick={1,...,7},
        ytick={1,...,7},
        axis lines=middle,
        smooth,
        domain=-0.2:8,
        ticklabel style={font=\scriptsize}
    ]
    % y = x
    \addplot[thick] {x};
    \node at (axis cs:6,7.5) [anchor=west] {$y = x$};
    
    % y = 4 * log_5(x) + 1
    \addplot[blue!50, thick, domain=0.5:8] {4*log10(x)/log10(5) + 1};
    \node[blue] at (axis cs:6.1,6.2) [anchor=west] {$y = f(x)$};
    \node at (axis cs:0,0) [anchor=north east] {$O$};
    \end{axis}
\end{scope}

%2
\begin{scope}[shift={(8,0)}]
    \begin{axis}[
        grid=both,
        major grid style={line width=.2pt,draw=gray!40},
        xmin=-1, xmax=8,
        ymin=-1, ymax=8,
        xtick={1,...,7},
        ytick={1,...,7},
        axis lines=middle,
        smooth,
        domain=-0.2:8,
        ticklabel style={font=\scriptsize}
    ]
    % y = x
    \addplot[thick] {x};
    \node at (axis cs:6,7.5) [anchor=west] {$y = x$};
    
    % y = 4 * log_5(x) + 1
    \addplot[blue!50, thick, domain=0.5:8] {4*log10(x)/log10(5) + 1};
    \node[blue] at (axis cs:6.1,6.2) [anchor=west] {$y = f(x)$};

    % 합성
    \addplot[orange, thick, domain=0.8:8] {4*log10(4*log10(x)/log10(5) + 1)/log10(5) + 1};
    \node[orange] at (axis cs:5.4,4.9) [anchor=west] {$y = f \circ f(x)$};
    \node at (axis cs:0,0) [anchor=north east] {$O$};

	% 점선 추가
	\draw[dashed] (axis cs:2,0) -- (axis cs:2,{4*log10(4*log10(2)/log10(5) + 1)/log10(5) + 1});
	\draw[dashed] (axis cs:{4*log10(2)/log10(5) + 1}, 0) -- (axis cs:{4*log10(2)/log10(5) + 1}, {4*log10(4*log10(2)/log10(5) + 1)/log10(5) + 1});
	\draw[dashed] (axis cs:0,{4*log10(2)/log10(5) + 1}) -- (axis cs:{4*log10(2)/log10(5) + 1}, {4*log10(2)/log10(5) + 1});
	\draw[dashed] (axis cs:2,{4*log10(4*log10(2)/log10(5) + 1)/log10(5) + 1}) -- (axis cs:{4*log10(2)/log10(5) + 1}, {4*log10(4*log10(2)/log10(5) + 1)/log10(5) + 1});

	% 점 추가
	\filldraw[teal] (axis cs:1,1) circle (1.5pt);
	\filldraw[teal] (axis cs:5,5) circle (1.5pt);

    \end{axis}
\end{scope}

\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\begin{tikzpicture}[scale=1.4]
    % f(x)
    \begin{scope}
        \draw[thick, ->] (-0.5,0) -- (2.5,0);
        \draw[thick, ->] (0,-0.5) -- (0,2.5);
        \draw[thick, blue!50] (0,1) -- (1,2);
        \draw[thick, blue!50] (1,2) -- (2,0);
        \draw[dashed] (1,0) -- (1,2);
        \node[blue] at (2,1) {$f(x)$};
        
        \node[below] at (1,0) {$1$};
        \node[below] at (2,0) {$2$};
        \node[below left] at (0,0) {$O$};
        \node[left] at (0,1) {$1$};
        \node[left] at (0,2) {$2$};
    \end{scope}

    % g(x)
    \begin{scope}[shift={(4,0)}]
        \draw[thick, ->] (-0.5,0) -- (2.5,0);
        \draw[thick, ->] (0,-0.5) -- (0,2.5);
        \draw[thick, blue!50] (0,1) -- (1,0);
        \draw[thick, blue!50] (1,0) -- (2,2);
        \draw[dashed] (2,0) -- (2,2);
        \draw[dashed] (0,2) -- (2,2);
        \node[blue] at (1.3,1.5) {$g(x)$};
        
        \node[below] at (1,0) {$1$};
        \node[below] at (2,0) {$2$};
        \node[below left] at (0,0) {$O$};
        \node[left] at (0,1) {$1$};
        \node[left] at (0,2) {$2$};
    \end{scope}

    % (g o f)(x)
    \begin{scope}[shift={(8,0)}]
        \draw[thick, ->] (-0.5,0) -- (2.5,0);
        \draw[thick, ->] (0,-0.5) -- (0,2.5);
        \draw[thick, orange] (0,0) -- (1,2);
        \draw[thick, orange] (1,2) -- (1.5,0);
        \draw[thick, orange] (1.5,0) -- (2,1);
        \draw[dashed] (1,0) -- (1,2);
        \draw[dashed] (2,0) -- (2,1);
        \draw[dashed] (0,1) -- (2,1);
        \draw[dashed] (0,2) -- (1,2);
        \node[orange] at (2,1.5) {$(g \circ f)(x)$};
        
        \node[below] at (1,0) {$1$};
        \node[below] at (2,0) {$2$};
        \node[below left] at (0,0) {$O$};
        \node[left] at (0,1) {$1$};
        \node[left] at (0,2) {$2$};
    \end{scope}

    % (f o g)(x)
    \begin{scope}[shift={(12,0)}]
        \draw[thick, ->] (-0.5,0) -- (2.5,0);
        \draw[thick, ->] (0,-0.5) -- (0,2.5);
        \draw[thick, orange] (0,2) -- (1,1);
        \draw[thick, orange] (1,1) -- (1.5,2);
        \draw[thick, orange] (1.5,2) -- (2,0);
        \draw[dashed] (1,0) -- (1,1);
        \draw[dashed] (1.5,0) -- (1.5,2);
        \draw[dashed] (0,1) -- (1,1);
        \draw[dashed] (0,2) -- (1.5,2);
        
        \node[below] at (1,0) {$1$};
        \node[below] at (2,0) {$2$};
        \node[below left] at (0,0) {$O$};
        \node[left] at (0,1) {$1$};
        \node[left] at (0,2) {$2$};
        \node[orange] at (2.5,1.5) {$(f \circ g)(x)$};
    \end{scope}
\end{tikzpicture}
\end{document}
```

[[그래프 완전정복 6 - 볼록함수]]

```tikz
\begin{document}
\begin{tikzpicture}
    % First shape
    \begin{scope}
        % Polygon
        \filldraw[blue!15] (0,0) -- (3,-1) -- (4,-4) -- (1,-3) -- cycle;
        \draw[blue!50] (0,0) -- (3,-1) -- (4,-4) -- (1,-3) -- cycle;

        % Diagonals
        \draw[thick, teal] (0.5 , -0.5) -- (3.5,-3.5);
        \draw[thick, teal] (2,-1) -- (1,-2);
        \draw[thick, teal] (1.5 ,-2.5) -- (3,-2.5);

        % Vertices
        \fill[teal] (0.5 ,-0.5) circle (2pt);
        \fill[teal] (3.5,-3.5) circle (2pt);
        \fill[teal] (2,-1) circle (2pt);
        \fill[teal] (1,-2) circle (2pt);
        \fill[teal] (1.5,-2.5) circle (2pt);
        \fill[teal] (3,-2.5) circle (2pt);
    \end{scope}

    % Second shape
    \begin{scope}[shift={(7,0)}]
        % Polygon
        \filldraw[blue!15] (0,0) -- (1,-4) -- (1.5,-1.5) -- (4,-1) -- cycle;
        \draw[blue!50] (0,0) -- (1,-4) -- (1.5,-1.5) -- (4,-1) -- cycle;

        % Diagonals
        \draw[thick, red] (1,-3) -- (3,-1);
        \draw[thick, teal] (0.3,-0.3) -- (1.3,-1.3);

        % Vertices
        \fill[red] (1,-3) circle (2pt);
        \fill[red] (3,-1) circle (2pt);
        \fill[teal] (0.3,-0.3) circle (2pt);
        \fill[teal] (1.3,-1.3) circle (2pt);
    \end{scope}
\end{tikzpicture}
\end{document}

```

```tikz
\begin{document}
\begin{tikzpicture}[scale=1.4]
    % f(x)
    \begin{scope}
    \draw[thick, ->] (-2.5,0) -- (2.5,0);

    % Parabola
    \draw[thick, blue!50] plot[domain=-2.2:1.7, smooth] (\x, {3-(1/2)*(\x)^2});

    % Lines and dashed lines
    \draw[dashed] (0,0) -- (0,3);
    \draw[dashed] (-1.5,0) -- (-1.5, 1.875);
    \draw[dashed] (1,0) -- (1,2.5);

    \draw[thick, orange] (-1.5,1.875) -- (1,2.5);
    \fill[orange] (0,2.25) circle (1.5pt);
	\node[orange, below] at(0,2) {$tf(x) + (1-t)f(y)$};
    \fill[blue] (-1.5,1.875) circle (1.5pt) node[left] {$f(x)$};
    \fill[blue] (1,2.5) circle (1.5pt) node[right] {$f(y)$};
    \fill[blue] (0,3) circle (1.5pt) ;
	\node[blue, above] at(0,3) {$f(tx + (1-t)y)$};

    % Midpoint labels
    \node[below] at (-1.5,0) {$x$};
    \node[below,scale=0.8] at (0,0) {$tx+(1-t)y$};
    \node[below] at (1,0) {$y$};
    \end{scope}

    % 2
    \begin{scope}[shift={(6,0)}]
    \draw[thick, ->] (-2.5,0) -- (2.5,0);

    % Parabola
    \draw[thick, blue!50] plot[domain=-1.7:2.2, smooth] (\x, {1+(1/2)*(\x)^2});

    % Lines and dashed lines
    \draw[dashed] (0,0) -- (0,1.75);
    \draw[dashed] (-1,0) -- (-1, 1.5);
    \draw[dashed] (1.5,0) -- (1.5, 2.125);

    \draw[thick, orange] (-1,1.5) -- (1.5,2.125);
    \fill[orange] (0,1.75) circle (1.5pt);
	\node[orange, above] at(0,2) {$tf(x) + (1-t)f(y)$};
    \fill[blue] (-1,1.5) circle (1.5pt) node[left] {$f(x)$};
    \fill[blue] (1.5,2.125) circle (1.5pt) node[right] {$f(y)$};
    \fill[blue] (0,1) circle (1.5pt) ;
	\node[blue, below] at(0,1) {$f(tx + (1-t)y)$};

    % Midpoint labels
    \node[below] at (-1,0) {$x$};
    \node[below,scale=0.8] at (0,0) {$tx+(1-t)y$};
    \node[below] at (1.5,0) {$y$};
    \end{scope}
\end{tikzpicture}
\end{document}
```

```tikz
\begin{document}
\begin{tikzpicture}[scale=1.3]
	%1
    \begin{scope}[shift={(0,0)}]
    \node[above] at (2.3,0) {$(1)$};
    % Parabola
    \draw[thick, blue!50] plot[domain=-2.2:1.7, smooth] (\x, {3-(1/2)*(\x)^2});
	\draw[thick, orange] (-1.5, 1.875) -- (0, 3);
	\draw[thick, red] (0, 3) -- (1, 2.5);

    \draw[thick, ->] (-2.5,0) -- (2.5,0);

    % Lines and dashed lines
    \draw[dashed] (-1.5,0) -- (-1.5, 1.875);
    \draw[dashed] (0,0) -- (0,3);
    \draw[dashed] (1,0) -- (1,2.5);

    \fill[blue] (-1.5,1.875) circle (1.5pt) node[left] {$A$};
    \fill[orange] (0,3) circle (1.5pt) node[above] {$B$};
    \fill[red] (1,2.5) circle (1.5pt) node[right] {$C$};

    % Midpoint labels
    \node[orange] at (-0.75,1.75) {$\frac{f(b)-f(a)}{b-a}$};
    \node[red] at (0.5,2.3) {$\frac{f(c)-f(b)}{c-b}$};
    \node[below] at (-1.5,0) {$a$};
    \node[below] at (0,0) {$b$};
    \node[below] at (1,0) {$c$};
    \end{scope}

	%2
    \begin{scope}[shift={(6,0)}]
    \node[above] at (2.3,0) {$(2)$};
    % Parabola
    \draw[thick, blue!50] plot[domain=-2.2:1.7, smooth] (\x, {3-(1/2)*(\x)^2});
	\draw[thick, orange] (-1.5, 1.875) -- (0, 3);
	\draw[thick, red] (-1.5, 1.875) -- (1, 2.5);

    \draw[thick, ->] (-2.5,0) -- (2.5,0);

    % Lines and dashed lines
    \draw[dashed] (-1.5,0) -- (-1.5, 1.875);
    \draw[dashed] (0,0) -- (0,3);
    \draw[dashed] (1,0) -- (1,2.5);

    \fill[blue] (-1.5,1.875) circle (1.5pt) node[left] {$A$};
    \fill[orange] (0,3) circle (1.5pt) node[above] {$B$};
    \fill[red] (1,2.5) circle (1.5pt) node[right] {$C$};

    % Midpoint labels
    \node[orange] at (0,2.5) {$\frac{f(b)-f(a)}{b-a}$};
    \node[red] at (0.5,2) {$\frac{f(c)-f(a)}{c-a}$};
    \node[below] at (-1.5,0) {$a$};
    \node[below] at (0,0) {$b$};
    \node[below] at (1,0) {$c$};
    \end{scope}

	%3
    \begin{scope}[shift={(12,0)}]
    \node[above] at (2.3,0) {$(3)$};
    % Parabola
    \draw[thick, blue!50] plot[domain=-2.5:1.7, smooth] (\x, {3-(1/2)*(\x)^2});
	\draw[thick, orange] (-2.45, 0) -- (0, 3);
	\draw[thick, red] (-2.45, 0) -- (1, 2.5);

    \draw[thick, ->] (-2.7,0) -- (2.5,0);
    \draw[thick, ->] (-2.45,-0.2) -- (-2.45,3);

    % Lines and dashed lines
    \draw[dashed] (0,0) -- (0,3);
    \draw[dashed] (1,0) -- (1,2.5);

    \fill (-2.45,0) circle (1.5pt) node[below left] {$O$};
    \fill[orange] (0,3) circle (1.5pt) node[above] {$A$};
    \fill[red] (1,2.5) circle (1.5pt) node[right] {$B$};

    % Midpoint labels
    \node[orange] at (0.3,2.5) {$\frac{f(a)}{a}$};
    \node[red] at (0.75,1.5) {$\frac{f(b)}{b}$};
    \node[below] at (0,0) {$a$};
    \node[below] at (1,0) {$b$};
    \end{scope}

	%4
    \begin{scope}[shift={(0,-4)}]
    \node[above] at (2.3,0) {$(4)$};
    % Parabola
    \draw[thick, blue!50] plot[domain=-2.2:1.7, smooth] (\x, {3-(1/2)*(\x)^2});
	\draw[thick, red] (0.3,3.2) -- (1.7, 1.8) node[right] {$f'(b)$};
	\draw[thick, orange] (-2.2, 0.82) -- (-0.8, 2.92) node[left] {$f'(a)$};
    \draw[thick, ->] (-2.5,0) -- (2.5,0);

    % Lines and dashed lines
    \draw[dashed] (-1.5,0) -- (-1.5, 1.875);
    \draw[dashed] (1,0) -- (1,2.5);

    \fill[orange] (-1.5,1.875) circle (1.5pt) node[left] {$A$};
    \fill[red] (1,2.5) circle (1.5pt) node[right] {$B$};
    \node[below] at (-1.5,0) {$a$};
    \node[below] at (1,0) {$b$};
    \end{scope}

	%5
    \begin{scope}[shift={(6,-4)}]
    \node[above] at (2.3,0) {$(5)$};
    % Parabola
    \draw[thick, blue!50] plot[domain=-2.2:1.7, smooth] (\x, {3-(1/2)*(\x)^2});
	\draw[thick, orange] (-2.2, 0.82) -- (-0.8, 2.92) node[left] {$f'(a)$};
    \draw[thick, ->] (-2.5,0) -- (2.5,0);
    \draw[thick, red] (-1.5, 1.875) -- (1, 2.5);

    % Lines and dashed lines
    \draw[dashed] (-1.5,0) -- (-1.5, 1.875);
    \draw[dashed] (1,0) -- (1,2.5);

    \fill[orange] (-1.5,1.875) circle (1.5pt) node[left] {$A$};
    \fill[red] (1,2.5) circle (1.5pt) node[right] {$B$};
    \node[red] at (0,1.8) {$\frac{f(b)-f(a)}{b-a}$};
    \node[below] at (-1.5,0) {$a$};
    \node[below] at (1,0) {$b$};
    \end{scope}

	%6
    \begin{scope}[shift={(12,-4)}]
    \node[above] at (2.3,0) {$(6)$};
    % Parabola
    \fill[blue!20] (-1.5,0) -- plot[domain=-1.5:1, smooth] (\x, {3-(1/2)*(\x)^2}) -- (1,0) -- cycle;
    \fill[orange!20] (-1.5,1.875) -- (1,2.5) -- (1,0) -- (-1.5,0) -- cycle;
    \draw[thick, blue!50] plot[domain=-2.2:1.7, smooth] (\x, {3-(1/2)*(\x)^2});

    \draw[thick, ->] (-2.5,0) -- (2.5,0);

    % Lines and dashed lines
    \draw[dashed] (-1.5,0) -- (-1.5, 1.875);
    \draw[dashed] (1,0) -- (1,2.5);

    \fill[blue] (-1.5,1.875) circle (2pt) node[left] {$A$};
    \fill[blue] (1,2.5) circle (2pt) node[right] {$B$};

    % Midpoint labels
    \node[blue] at (-0.25,2.5) {$\int_a^b f(x) dx$};
    \node[orange, above] at (-0.25,0.5) {$\frac{(b-a)(f(b)+f(a))}{2}$};
    \node[below] at (-1.5,0) {$a$};
    \node[below] at (1,0) {$b$};
    \end{scope}
    
\end{tikzpicture}
\end{document}
```

[[다항함수의 넓이 공식]]

```tikz
\begin{document}
\begin{tikzpicture}
    \draw[->] (-3,0) -- (3,0) node[right] {$x$};
    
        % Function plot (x-1)(x+1)
    \draw[domain=-2.5:2.5,smooth,variable=\x,blue] plot (\x,{(\x-2)*(\x+2)*(1/2.5)});
    
        % Fill area between the plot and the x-axis
    \fill[blue, opacity=0.2] (-2,0) -- plot[domain=-2:2] (\x,{(\x-2)*(\x+2)*(1/2.5)}) -- (2,0) -- cycle;
    
        % Roots with labels
    \node[below] at (-2.1,0) {$\alpha$};
    \node[below] at (2.1,0) {$\beta$};
    
        % Dots at roots
    \filldraw (-2,0) circle (2pt);
    \filldraw (2,0) circle (2pt);

    \begin{scope}[shift={(6,0)}]
        % Scale the table up a bit
            \draw (0,0) node {
                \scalebox{1.8}{
                $\frac{|a||\beta - \alpha|^3}{6}$}
            };
        \end{scope}

\end{tikzpicture}
\end{document}
```
```tikz
\begin{document}
\begin{tikzpicture}
    % Axes
    \draw[->] (-3,0) -- (3,0) node[right] {$x$};

    % Function plot (x-1)(x+1)
    \draw[domain=-2.1:2.5,smooth,variable=\x,blue] plot (\x,{(\x+2)*(\x-0.5)*(\x-2)*(1/2)});

    % Fill area between the plot and the x-axis
    \fill[blue, opacity=0.2] (0.5,0) -- plot[domain=0.5:2] (\x,{(\x+2)*(\x-0.5)*(\x-2)*(1/2)}) -- (2,0) -- cycle;

    % Roots with labels
    \node[below] at (-2.2,0) {$\alpha$};
	\node[below] at (0.4,0) {$\beta$};
	\node[below] at (2.2,0) {$\gamma$};
	\node[above] at (-0.75,0.2) {$m$};
	\node[above] at (1.25,0.2) {$l$};
	
    % Dots at roots
    \fill (-2,0) circle (2pt);
    \fill (0.5,0) circle (2pt);
    \fill (2,0) circle (2pt);

	\draw[dashed, rounded corners=20pt] (-2,0) -- (-0.75,0.3) -- (0.5,0);
	\draw[dashed, rounded corners=20pt] (0.5,0) -- (1.25,0.3) -- (2,0);

    \begin{scope}[shift={(6,0)}]
        % Scale the table up a bit
            \draw (0,0) node {
                \scalebox{1.8}{
                $\frac{|a|(l+2m)l^3}{12}$}
            };
        \end{scope}

\end{tikzpicture}
\end{document}
```
```tikz
\begin{document}
\begin{tikzpicture}
    % Axes
    \draw[->] (-3,0) -- (3,0) node[right] {$x$};

    % Function plot (x-1)(x+1)
    \draw[domain=-2.5:2.5,smooth,variable=\x,blue] plot (\x,{(\x+1.5)^2*(\x-2)*(1/4)});

    % Fill area between the plot and the x-axis
    \fill[blue, opacity=0.2] (-1.5,0) -- plot[domain=-1.5:2] (\x,{(\x+1.5)^2*(\x-2)*(1/4)}) -- (2,0) -- cycle;

    % Roots with labels
    \node[below] at (-1.5,0) {$\alpha$};
    \node[below] at (2.1,0) {$\beta$};

    % Dots at roots
    \filldraw (-1.5,0) circle (2pt);
    \filldraw (2,0) circle (2pt);

    \begin{scope}[shift={(6,0)}]
        % Scale the table up a bit
            \draw (0,0) node {
                \scalebox{1.8}{
                $\frac{|a||\beta - \alpha|^4}{12}$}
            };
        \end{scope}

\end{tikzpicture}
\end{document}
```
```tikz
\begin{document}
\begin{tikzpicture}
    % Axes
    \draw[->] (-3,0) -- (3,0) node[right] {$x$};

    % Function plot (x-1)(x+1)
    \draw[domain=-2.9:2.25,smooth,variable=\x,blue] plot (\x,{(\x+1.5)^3*(\x-2)*(1/10)});

    % Fill area between the plot and the x-axis
    \fill[blue, opacity=0.2] (-1.5,0) -- plot[domain=-1.5:2] (\x,{(\x+1.5)^3*(\x-2)*(1/10)}) -- (2,0) -- cycle;

    % Roots with labels
    \node[below] at (-1.5,0) {$\alpha$};
    \node[below] at (2.1,0) {$\beta$};

    % Dots at roots
    \filldraw (-1.5,0) circle (2pt);
    \filldraw (2,0) circle (2pt);

    \begin{scope}[shift={(6,0)}]
        % Scale the table up a bit
            \draw (0,0) node {
                \scalebox{1.8}{
                $\frac{|a||\beta - \alpha|^5}{20}$}
            };
        \end{scope}

\end{tikzpicture}
\end{document}
```
```tikz
\begin{document}
\begin{tikzpicture}
    % Axes
    \draw[->] (-3,0) -- (3,0) node[right] {$x$};

    % Function plot (x-1)(x+1)
    \draw[domain=-2.5:2.5,smooth,variable=\x,blue] plot (\x,{(\x+1.5)^2*(\x-1.5)^2*(1/10)});

    % Fill area between the plot and the x-axis
    \fill[blue, opacity=0.2] (-1.5,0) -- plot[domain=-1.5:1.5] (\x,{(\x+1.5)^2*(\x-1.5)^2*(1/10)}) -- (1.5,0) -- cycle;

    % Roots with labels
    \node[below] at (-1.5,0) {$\alpha$};
    \node[below] at (1.5,0) {$\beta$};

    % Dots at roots
    \filldraw (-1.5,0) circle (2pt);
    \filldraw (1.5,0) circle (2pt);

    \begin{scope}[shift={(6,0)}]
        % Scale the table up a bit
            \draw (0,0) node {
                \scalebox{1.8}{
                $\frac{|a||\beta - \alpha|^5}{30}$}
            };
        \end{scope}

\end{tikzpicture}
\end{document}
```
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

[[사인함수의 넓이]]

```tikz
\begin{document}
\begin{tikzpicture}[scale=1.5]
    % Axes
    \draw[-latex] (-0.2,0) -- (7,0) node[right] {$x$}; % Extend x-axis beyond 2pi
    \draw[-latex] (0,-1.5) -- (0,1.5) node[above] {$y$};

    % sin x plot
    \draw[domain=0:6.283, smooth, variable=\x, blue] plot (\x,{sin(\x r)});
    \fill[blue, opacity=0.2] plot[domain=0:6.283, smooth] (\x, {sin(\x r)}) -- (6.283,0) -- (0,0) -- cycle;
    \node at (3, -1.7) {$y = \sin x$}; % Label for sin x

    \node at (-0.2, 0) [left] {$y=0$};
    \node at (3.141, 0) [below] {$\pi$};
    \node at (6.283, 0) [above] {$2\pi$};

    % Dashed lines for pi/2 and 3pi/2, and their projections
    \draw[densely dashed] (1.5708, 0) -- (1.5708, 1) node[at start, below] {$\frac{\pi}{2}$}; % pi/2
    \draw[densely dashed] (1.5708, 1) -- (0,1) node at (-0.2, 1) [left] {$y=1$};
    \draw[densely dashed] (4.71239, 0) -- (4.71239, -1) node[at start, above] {$\frac{3\pi}{2}$}; % 3pi/2
    \draw[densely dashed] (4.71239, -1) -- (0,-1) node at (-0.2, -1) [left] {$y=-1$};

    % Axes for cos x, shifted to the right
    \begin{scope}[shift={(8,0)}]
        \draw[-latex] (-0.5,0) -- (2,0) node[right] {$x$}; % Extend x-axis for pi/2
        \draw[-latex] (0,-0.5) -- (0,1.5) node[above] {$y$};

        % cos x plot
        \draw[domain=0:1.571, smooth, variable=\x, red] plot (\x,{cos(\x r)});
        \fill[red, opacity=0.2] plot[domain=0:1.571, smooth] (\x, {cos(\x r)}) -- (1.571,0) -- (0,0) -- cycle;
        \node at (0.75, -1.7) {$y = \cos x$}; % Label for cos x

        % Dashed line at pi/2 and label
        \draw node at (1.5708,0) [below] {$\frac{\pi}{2}$};
        
        % y=1 label on the y-axis for cos graph
        \node at (-0.1, 1) [left] {$y=1$};
    \end{scope}
\end{tikzpicture}
\end{document}
```
```tikz
\begin{document}
\begin{tikzpicture}[scale=1.3]
    % Axes
    \draw[-latex] (-0.2,0) -- (6.5,0) node[right] {$x$}; % Extend x-axis beyond 2pi
    \draw[-latex] (0,-1.5) -- (0,1.5) node[above] {$y$};

    % sin^2 x plot
    \draw[domain=0:6.283, smooth, variable=\x, teal] plot (\x,{sin(\x r)^2});
    \fill[teal, opacity=0.2] plot[domain=0:6.283, smooth] (\x, {sin(\x r)^2}) -- (6.283,0) -- (0,0) -- cycle;
    \node at (3, -1.5) {$y = \sin^2 x$}; % Label for sin^2 x

    \node at (-0.2, 0) [left] {$y=0$};
    \node at (3.141, 0) [below] {$\pi$};
    \node at (6.283, 0) [below] {$2\pi$};

    % Dashed lines for pi/2 and 3pi/2, and their projections
    \draw[densely dashed] (1.5708, 0) -- (1.5708, 1) node[at start, below] {$\frac{\pi}{2}$}; % pi/2
    \draw[densely dashed] (4.71239, 1) -- (0,1) node at (-0.2, 1) [left] {$y=1$};
    \draw[densely dashed] (4.71239, 0) -- (4.71239, 1) node[at start, below] {$\frac{3\pi}{2}$}; % 3pi/2

% Axes for cos x, shifted to the right
    \begin{scope}[shift={(8.5,0)}]
    % Axes
    \draw[-latex] (-0.2,0) -- (6.5,0) node[right] {$x$}; % Extend x-axis beyond 2pi
    \draw[-latex] (0,-1.5) -- (0,1.5) node[above] {$y$};
	\draw[domain=0:6.283, smooth, variable=\x, teal] plot (\x,{sin(\x r)^3});
    \fill[teal, opacity=0.2] plot[domain=0:6.283, smooth] (\x, {sin(\x r)^3}) -- (6.283,0) -- (0,0) -- cycle;
    \node at (3, -1.5) {$y = \sin^3 x$}; % Label for sin^2 x

    \node at (-0.2, 0) [left] {$y=0$};
    \node at (3.141, 0) [below] {$\pi$};
    \node at (6.283, 0) [above] {$2\pi$};

    % Dashed lines for pi/2 and 3pi/2, and their projections
    \draw[densely dashed] (1.5708, 0) -- (1.5708, 1) node[at start, below] {$\frac{\pi}{2}$}; % pi/2
    \draw[densely dashed] (4.71239, -1) -- (0,-1) node at (-0.2, -1) [left] {$y=-1$};
    \draw[densely dashed] (1.5708, 1) -- (0,1) node at (-0.2, 1) [left] {$y=1$};
    \draw[densely dashed] (4.71239, 0) -- (4.71239, -1) node[at start, above] {$\frac{3\pi}{2}$}; % 3pi/2
    \end{scope}
    
\end{tikzpicture}
\end{document}
```

[[삼각형의 넓이 공식]]
```tikz
\usepackage{amsmath}
\begin{document}
\begin{tikzpicture}[scale=0.8]

    % 왼쪽 일반적인 삼각형
    \begin{scope}
        \draw[thick, blue!50] (0,0) -- (7,0) -- (3,4) -- cycle;
        \draw[dashed] (3,4) -- (3,0);
        \node[right] at (3, 2) {$h$};
        \node[below] at (3.5, -0.2) {$a$};
        \node[above left] at (1.5, 2) {$b$};
        \node[above right] at (5, 2) {$c$};
        \node[right,scale=1.5] at (7.5, 2) {$\frac{1}{2}ah = \frac{1}{2}ab\sin\theta$};
    \end{scope}

% theta 표시
	\draw (0.8, 0) arc[start angle=0, end angle=43, radius=1];
	\node[above right] at (0.8, 0.15) {$\theta$}; 
	% 직각 표시
	\draw (3,0) -- + (0.3,0) -- +(0.3,0.3) -- +(0,0.3) ;


    % 오른쪽 정삼각형
    \begin{scope}[shift={(15,0)}]
        \draw[thick, blue!50] (0,0) -- (2.309,4) -- (4.618,0) -- cycle;
        \node[below] at (2.309, -0.2) {$a$};
        \node[rotate=150] at (1.154, 2) {$=$};
        \node[rotate=30] at (3.46, 2) {$=$};
        \node[rotate=90] at (2.309, 0) {$=$};
        \node[right, scale=1.5] at (5, 2) {$\frac{\sqrt{3}}{4}a^2$};
    \end{scope}

\end{tikzpicture}
\end{document}
```
```tikz
\usepackage{tikz}
\usepackage{amsmath}
\begin{document}

\begin{tikzpicture}[scale=0.8]

    % 왼쪽 원에 내접하는 삼각형
    \begin{scope}
        \draw[thick, blue!50] (0,0) circle (3);
        \draw[thick, blue!50] (-2.6, -1.5) -- (2.6, -1.5) -- (1.5, 2.6) -- cycle;
        
        \fill[blue!50] (0,0) circle (2pt) node[black, below] {$O$};
        \draw[dashed] (0,0) -- (2.6,-1.5) node[below] at(1.3,-0.75) {$R$};
		\node[above left] at (-0.55, 0.65) {$c$};
		\node[right] at (2.05, 0.65) {$b$};
		\node[below] at (0, -1.5) {$a$};

        \node[right, scale=2] at (4, 0) {$\frac{abc}{4R}$};
        
    \end{scope}

    % 오른쪽 삼각형에 내접하는 원
    \begin{scope}[shift={(13,0)}]
        \draw[thick, blue!50] (-4,-1.5) -- (3,-1.5) -- (0.23,2.25) -- cycle;
        \draw[thick, blue!50] (0,0) circle (1.5);
        
        \fill[blue!50] (0,0) circle (2pt) node[black, below right] {$O$};
        \draw[dashed] (0,0) -- (0,-1.5) node[left] at(0,-0.75) {$r$};
        \draw (0,-1.5) -- + (0.3,0) -- +(0.3,0.3) -- +(0,0.3) ;
		\node[above left] at (-1.8, 0.35) {$c$};
		\node[right] at (1.7, 0.35) {$b$};
		\node[below] at (0, -1.5) {$a$};

        \node[right, scale=1.5] at (4, 0) {$\frac{r}{2}(a+b+c)$};

    \end{scope}

\end{tikzpicture}
\end{document}
```
```tikz
\usepackage{tikz}
\begin{document}

\begin{tikzpicture}[scale=0.8]

	% Draw points
	\foreach \x in {-1, 0, 1, 2, 3, 4, 5} { 
	\foreach \y in {-1, 0, 1, 2, 3, 4} { 
	\fill[gray!50] (\x,\y) circle (2pt); } }

    % Points
    \coordinate (A) at (0,0);
    \coordinate (B) at (4,1);
    \coordinate (C) at (2,3);
    
    % Triangle
    \draw[blue, thick] (A) -- (B) -- (C) -- cycle;
    
    % Labels
    \node[below left] at (A) {$A(x_1,~y_1)$};
    \node[below right] at (B) {$B(x_2,~y_2)$};
    \node[above] at (C) {$C(x_3,~y_3)$};

    \node[below] at (2,0.5) {$c$};
    \node[above right] at (3,2) {$a$};
    \node[above left] at (1,1.5) {$b$};
    
\end{tikzpicture}

\end{document}

```

[[삼차 함수(Cubic function)]]
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


```tikz
\begin{document}
\begin{tikzpicture}[scale=2.5]
    % Axes
    \draw[-latex] (-1.5,0) -- (1.5,0) node[right] {$x$};
    \draw[-latex] (0,-1.2) -- (0,1.2) node[above] {$y$};

    % x^2 plot with label
    \draw[domain=-1:1, smooth, variable=\x, blue] plot ({\x}, {\x*\x});
    \fill[color=blue, domain=-1:1, variable=\x, opacity=0.5]
        plot ({\x}, {\x*\x}) -- (1,0) -- (-1,0) -- cycle;
    \node at (0, -1.4) {$f(-x)=f(x)$};

    % x^3 plot with label, shifted to the right
    \begin{scope}[shift={(4,0)}]
        \draw[-latex] (-1.5,0) -- (1.5,0) node[right] {$x$};
        \draw[-latex] (0,-1.2) -- (0,1.2) node[above] {$y$};

        \draw[domain=-1:1, smooth, variable=\x, red] plot ({\x}, {\x*\x*\x});
        \fill[color=red, domain=-1:1, variable=\x, opacity=0.5]
            plot ({\x}, {\x*\x*\x}) -- (1,0) -- (-1,0) -- cycle;
        \node at (0, -1.4) {$f(-x)=-f(x)$};
    \end{scope}
\end{tikzpicture}
\end{document}
```


[[이항정리(Binomial theorem)]]
```tikz
\usepackage{tikz}
\begin{document}
\begin{tikzpicture}[scale=1] 
% 줄 간격을 조절하기 위해 -\n*0.5를 사용합니다. 
\foreach \n in {0,...,7}{ 
	\foreach \k in {0,...,\n} {
		\node at (\k-\n/2,-\n*0.7) {${{}}_{\n}C_{\k}$}; 
		}
	}
\end{tikzpicture}
\end{document}
```

[[함수의 연속(Continuous)]]
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
