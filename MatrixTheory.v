Require Import VST.floyd.proofauto.
Require Import Coq.Lists.List.


Fixpoint replace_nth (n : nat) (new_val : Z) (l : list Z) : list Z :=
  match l with
  | [] => []
  | x :: t =>
    if Nat.eqb n 0%nat then
      new_val :: t 
    else
      x :: replace_nth (n - 1) new_val t 
  end.
  
Fixpoint ZeroMatrix (M: nat) : list Z :=
match M with
| O => nil
| S n => 0::ZeroMatrix n
end.


Fixpoint rcm (fm sm :list Z)(k t i j M N:nat): Z :=
match k with
| O => 0
| S n => ((nth ((M-i-1)*t+(t-n-1)) fm 0)* (nth ((t-n-1)*N+(N-j-1)) sm 0)) + (rcm fm sm n t i j M N)
end.

Fixpoint jfor (fm sm res:list Z)(t i j M N :nat): list Z :=
match j with
| O => res
| S k => jfor fm sm (replace_nth ((M-i-1)*N+(N-k-1)) (rcm fm sm t t i k M N) res)  t i k M N
end.

Fixpoint ifor (fm sm res:list Z)(t i M N :nat): list Z :=
match i with
| O => res
| S k => ifor fm sm (jfor fm sm res t k N M N) t k M N
end.

Definition MatrixMultiplication (fm sm: list Z)(M N T: nat): list Z :=
ifor fm sm (ZeroMatrix (M*N)) T M M N.


Compute (MatrixMultiplication (1::2::3::4::5::6::nil) (7::8::9::1::2::3::nil) 2 2 3).

