1. $A^2=I$ 이면, $A=I$ 또는 $A=-I$이다.[^1]
2. $A^2=O$ 이면, $A=O$ 이다.[^2]
3. $AB=I$이면, $A$와 $B$는 역행렬이 존재한다.[^3]
4. $A$가 역행렬이 존재하면 $(A^{-1})^{-1}=A$ 이다.[^4]
5. $AB$가 역행렬이 존재하면 $A$, $B$ 모두 역행렬이 존재한다.[^5]

[^1]: False, $A^2 =\begin{pmatrix}0 & 1 \\ 1 & 0\end{pmatrix} \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1\end{pmatrix} = I$
[^2]: False, $A^2 = \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix} \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix} = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix} = O$
[^3]: False, $AB = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \end{pmatrix} \begin{pmatrix} 1 & 0 \\ 0 & 1 \\ 0 & 0 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I$
[^4]: True, $A^{-1}A = I \Rightarrow (A^{-1})^{-1} = A$
[^5]: True, $C(AB) = I \Rightarrow (CA)B = I$,  $(AB)D = I \Rightarrow A(BD) = I$