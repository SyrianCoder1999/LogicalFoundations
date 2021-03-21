Theorem plus_id_example : forall n m:nat, 
  n = m -> 
  n + n = m + m.

Proof. 
  (* move both quantifiers into the context: *)
  intros n m.
  (* move the hypothesis into the context: *)
  intros H.
  (* rewrite the goal using the hypthesis: *) 
  rewrite -> H.
  reflexivity. Qed. 

Theorem plus_id_exercice : forall n m o: nat, 
  n = m -> m = o -> n + m = m + o.
  Proof.
  intros n m o.
  intros H.
  intros H2.
  rewrite -> H.
  rewrite <- H2.
  reflexivity. Qed.
