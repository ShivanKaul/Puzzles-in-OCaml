(* Returns last element of list *)
(* last: 'a list -> 'a option *)
let rec last l = match l with
  | [] -> None
  | x::[] -> Some x
  | x::xs -> last xs
