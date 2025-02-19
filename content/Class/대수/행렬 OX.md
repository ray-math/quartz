---
title: 행렬 OX
date: 2025-02-14
tags:
  - 행렬
---
1. $A^2=I$ 이면, $A=I$ 또는 $A=-I$이다.[^1]
2. $A^2=O$ 이면, $A=O$ 이다.[^2]
3. $AB=I$이면, $A$와 $B$는 역행렬이 존재한다.[^3]
4. $A$가 역행렬이 존재하면 $(A^{-1})^{-1}=A$ 이다.[^4]
5. $AB$가 역행렬이 존재하면 $A$, $B$ 모두 역행렬이 존재한다.[^5]
6. $m \times n$ 행렬 $A$에 대하여$AB = I_m$인 $n \times m$ 행렬 $B$가 존재한다. (또는 $n \times m$ 행렬 $B$에 대하여 $AB=I_m$인 $m \times n$ 행렬 $A$가 존재한다) [^6]
7. 임의의 행렬 $A, B$에 대하여 $\det(AB) = \det(A) \cdot \det(B)$이다.[^7]
8. $A$의 두 행 또는 두 열을 교환하여 얻은 행렬을 $B$라 하면, $\det(B) = \det(A)$이다.[^8]
9. $A$의 한 행 또는 열의 각 성분에 스칼라를 곱하여 얻은 행렬을 $B$라 하면, $\det(B) = \det(A)$이다.[^9]
10. $A$의 한 행의 스칼라 배를 다른 행에 더하여 얻은 행렬을 $B$라 하면, $\det(B) = \det(A)$이다.[^10]
11. $\det(A^t) = \det(A)$이다.[^11]

---
1. 닮음 행렬의 고윳값은 항상 같다.[^12]
2. 닮음 행렬의 고유벡터는 항상 같다.[^13]

[^1]: False, $A^2 =\begin{pmatrix}0 & 1 \\ 1 & 0\end{pmatrix} \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1\end{pmatrix} = I$
[^2]: False, $A^2 = \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix} \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix} = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix} = O$
[^3]: False, $AB = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \end{pmatrix} \begin{pmatrix} 1 & 0 \\ 0 & 1 \\ 0 & 0 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I$
[^4]: True, $A^{-1}A = I \Rightarrow (A^{-1})^{-1} = A$
[^5]: True, $C(AB) = I \Rightarrow (CA)B = I$,  $(AB)D = I \Rightarrow A(BD) = I$
[^6]: False, $A$(또는 $B$)의 랭크가 $m$일 때만 참이다.
[^7]: True, 행렬식은 기하학적으로 부피 변화율을 나타내며, 행렬 $A$가 공간을 변화시키는 비율이 $\det(A)$, 행렬 $B$가 공간을 변화시키는 비율이 $\det(B)$라고 할 때, 연속적으로 변형하면 전체 변화율이 곱해지는 것이 자연스럽다. 이 성질로 부터 다음이 성립한다. $\det(A^{-1}) = \frac{1}{\det(A)}$
[^8]: False, $\det(B) = -\det(A)$
[^9]: False, $\det(B) = k \cdot \det(A)$
[^10]: True
[^11]: True
[^12]: True, $A = P^{-1}BP$라 할 때, $A(v) = \lambda v \Rightarrow B(P(v)) =  PA(v) = P\lambda(v) = \lambda (P(v))$이므로 $B$의 고윳값도 $\lambda$이다.
[^13]: False
