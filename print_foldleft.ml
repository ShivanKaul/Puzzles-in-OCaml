let list_print l = List.fold_left (fun x y -> print_string y) () l

let _ = list_print ["hey" ; "girl" ; "whatcha" ; "doin"]
