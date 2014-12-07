(* largest: int list -> int *)
(* Finds the largest int in the list, tail-recursively *)

let largest l = 
  let rec largest' l k = match l with
    | [] -> k (min_int)
    | x::xs -> largest' xs (fun y -> if (x > k(y)) then x else k(y))
  in largest' l (fun x -> x)

(* let test = largest [200;2;3;4;5;6;100;6] *)
