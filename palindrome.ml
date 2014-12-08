(* Print all items of string and then print them in reverse order, but traverse only once. *)
(* palindrome: string list -> unit *)
let palindrome  l = 
  let rec p l k = match l with
    | [] -> k ()
    | x::xs -> print_string x ; p xs (fun () -> print_string x ; k ())
  in p l (fun x -> x)

(*let _ = palindrome ["hello"; "world" ; "I" ; "am" ; "freaking" ; "out"]*)
