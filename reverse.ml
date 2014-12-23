(* Reverse a list *)
(* rev: 'a list -> 'a list *)

let rev l = 
  let rec r l k = match l with
    | [] -> k []
    | x::xs -> r xs (fun h -> x :: (k h))
  in r l (fun r -> r)

let test = rev [1;2;3]
