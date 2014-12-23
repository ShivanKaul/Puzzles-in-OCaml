(* Finds kth element of list *)
(* findk: 'a list -> int -> 'a option *)

let rec findk l k = match l with
  | [] -> None
  | x::xs -> if k=1 then Some x else findk xs (k-1)
