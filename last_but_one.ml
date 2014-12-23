(* Returns penultimate element of list *)
(* pen: 'a list -> 'a option *)
let rec pen l = match l with
  | [] -> None
  | x::[] -> None
  | x::h::[] -> Some x
  | x::xs -> pen xs
