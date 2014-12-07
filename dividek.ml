(* A function that divides n successively by every number in the list, starting from the last
element in the list. If a zero is encountered in the list, the function should pass 0 to k immediately,
without doing any divisions. Written in full Continuation Passing Style. *)

(* Helper function *)
(* divk : int -> int -> (int -> ’a) -> ’a *)
let divk x y k = k(x/y)

(* dividek: int -> int list -> (int -> ’a) -> ’a *)
let dividek n l = 
  let dividek' n l k = match l with
  | 0::xs -> k (0)
  | [] -> divk n 1 k
  | x::xs -> dividek n xs (fun y -> divk y x k)
  in dividek' n l (fun x -> x)

(* let _ = dividek 6 [3;2;1] *)
