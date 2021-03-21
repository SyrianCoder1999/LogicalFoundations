Inductive rgb: Type := 
  | red 
  | green 
  | blue.

Inductive color: Type :=  
  | black 
  | white 
  | primary (p : rgb).


Definition monochrome (c : color) : bool :=
  match c with
  | black => true
  | white => true
  | primary p => false
  end.

Definition isred (c: color) : bool := 
  match c with 
  | black => false 
  | white => false
  | primary red => true
  | primary _ => false 
  end.

Module Playground.
  Definition b : rgb := blue.
End Playground.

Definition b : bool := true.

Check Playground.b : rgb.
Check b : bool.

Module TuplePlayground.
  Inductive bit: Type := 
  | B0
  | B1.
  
  Inductive nybble: Type :=
  |bits (b0 b1 b2 b3 : bit).

  Check (bits B1 B0 B1 B0)
      : nybble.
End TuplePlayground.
