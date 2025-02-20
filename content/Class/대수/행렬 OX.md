---
title: 행렬 OX
date: 2025-02-14
tags:
  - 행렬
---
1. $A^2=I$ 이면, $A=I$ 또는 $A=-I$이다.[^1]
2. $A^2=O$ 이면, $A=O$ 이다.[^2]
3. $(AB)^t = B^tA^t$이다.[^3]
4. $(A+cB)^t = A^t+cB^t$이다.[^16]
5. $\text{tr}(AB) = \text{tr}(BA)$이다.[^15]
6. $AB=I$이면, $A$와 $B$는 역행렬이 존재한다.[^4]
7. $A$가 역행렬이 존재하면 $(A^{-1})^{-1}=A$ 이다.[^5]
8. $AB$가 역행렬이 존재하면 $A$, $B$ 모두 역행렬이 존재한다.[^6]
9. $m \times n$ 행렬 $A$에 대하여$AB = I_m$인 $n \times m$ 행렬 $B$가 존재한다. (또는 $n \times m$ 행렬 $B$에 대하여 $AB=I_m$인 $m \times n$ 행렬 $A$가 존재한다) [^7]
10. 임의의 행렬 $A, B$에 대하여 $\det(AB) = \det(A) \cdot \det(B)$이다.[^8]
11. $A$의 두 행 또는 두 열을 교환하여 얻은 행렬을 $B$라 하면, $\det(B) = \det(A)$이다.[^9]
12. $A$의 한 행 또는 열의 각 성분에 스칼라를 곱하여 얻은 행렬을 $B$라 하면, $\det(B) = \det(A)$이다.[^10]
13. $A$의 한 행의 스칼라 배를 다른 행에 더하여 얻은 행렬을 $B$라 하면, $\det(B) = \det(A)$이다.[^11]
14. $\det(A^t) = \det(A)$이다.[^12]

---
1. 닮음 행렬의 고윳값은 항상 같다.[^13]
2. 닮음 행렬의 고유벡터는 항상 같다.[^14]

[^1]: False, $A^2 =\begin{pmatrix}0 & 1 \\ 1 & 0\end{pmatrix} \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1\end{pmatrix} = I$
[^2]: False, $A^2 = \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix} \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix} = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix} = O$
[^3]: True
[^4]: False, $AB = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \end{pmatrix} \begin{pmatrix} 1 & 0 \\ 0 & 1 \\ 0 & 0 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I$
[^5]: True, $A^{-1}A = I \Rightarrow (A^{-1})^{-1} = A$
[^6]: True, $C(AB) = I \Rightarrow (CA)B = I$,  $(AB)D = I \Rightarrow A(BD) = I$
[^7]: False, $A$(또는 $B$)의 랭크가 $m$일 때만 참이다.
[^8]: True, 행렬식은 기하학적으로 부피 변화율을 나타내며, 행렬 $A$가 공간을 변화시키는 비율이 $\det(A)$, 행렬 $B$가 공간을 변화시키는 비율이 $\det(B)$라고 할 때, 연속적으로 변형하면 전체 변화율이 곱해지는 것이 자연스럽다. 이 성질로 부터 다음이 성립한다. $\det(A^{-1}) = \frac{1}{\det(A)}$
[^9]: False, $\det(B) = -\det(A)$
[^10]: False, $\det(B) = k \cdot \det(A)$
[^11]: True
[^12]: True
[^13]: True, $A = P^{-1}BP$라 할 때, $A(v) = \lambda v \Rightarrow B(P(v)) =  PA(v) = P\lambda(v) = \lambda (P(v))$이므로 $B$의 고윳값도 $\lambda$이다. 따라서 닮음 행렬은 같은 특성다항식을 가진다.
[^14]: False
[^15]: True, $\text{tr}(AB) = \sum_{i=1}^{n} (AB)_{ii} = \sum_{i=1}^{n} \sum_{j=1}^{n} A_{ij}B_{ji} = \sum_{j=1}^{n} \sum_{i=1}^{n} B_{ji}A_{ij} = \sum_{j=1}^{n} (BA)_{jj} = \text{tr}(BA)$ 따라서, 닮음 행렬의 대각합도 같다.
[^16]: True, 따라서 $A$와 $A^t$의 특성 다항식도 같다.(고윳값과 중복도 또한 같다.)


