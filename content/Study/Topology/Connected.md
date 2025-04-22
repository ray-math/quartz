### $\operatorname{Int}A$ 와 $\partial A$ 가 각각 connected일 때, $A$ 는 connected이다.

$\operatorname{Int}A$ 와 $\partial A$ 가 각각 connected라고 가정한다. $A$ 가 disconnected라고 가정하여 모순을 찾는다.

$A=X\cap(U\cup V)$ 의 꼴로서 $U,V$ 를 $X$ 의 open set이라 하면 $C:=A\cap U$ 와 $D:=A\cap V$ 가 $A$ 의 서로 소인 두 open $\cap$ closed 부분집합이 되어 $A=C\cup D$ 이다. $\operatorname{Int}A$ 가 connected이므로 $\operatorname{Int}A$ 는 $C$ 나 $D$ 중 하나에 전부 포함될 수밖에 없다. 순서를 고정하기 위하여 $\operatorname{Int}A\subset C$ 로 두면 $D$ 의 모든 점은 $A$ 의 interior 에 속하지 않는다. 따라서 $D\subset\partial A$ 이다.

임의의 $p\in D$ 를 잡고 $p$ 의 $X$‑neighborhood $N$ 을 택한다. $p\in\partial A$ 이므로 $N$ 은 $A$ 와 $X\setminus A$ 를 모두 만난다. 특히 $N\cap A$ 는 비어 있지 않고 $N\cap\operatorname{Int}A\neq\varnothing$ 이므로 $N\cap C\neq\varnothing$ 가 된다. 그러나 $C$ 와 $D$ 는 $A$ 안에서 서로 소이므로 $N\cap A\subset D$ 인 open set은 존재할 수 없다. 이는 $D$ 가 $A$ 에서 open 이라는 가정에 모순이므로 $A$ 의 separation $C,D$ 자체가 성립할 수 없다.

모순이 발생하였으므로 처음의 가정 $A$ 가 disconnected 라는 전제는 거짓이다. 따라서 $A$ 는 connected다.