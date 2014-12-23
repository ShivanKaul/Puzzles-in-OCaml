(* Find number of elements in a list *)
(* size: 'a list -> int *)

let size l = 
  let rec s l k = match l with
    | [] -> k
    | x::xs -> s xs (k+1)
  in s l 0
