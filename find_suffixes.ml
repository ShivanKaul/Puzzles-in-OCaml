let find_suffixes l =
  let rec f' l k = match l with
    | [] -> k ()
    | x::xs -> f' xs (fun () -> (k ()) @ [xs])
  in f' l (fun () -> [l])

let test = [1;2;5]
let _ = find_suffixes test

(* int list list = [[1; 2; 5]; [2; 5]; [5]] *)
