(* Takes two lists and returns a list. The first element of the new list should be the first element of the
first list and the second element of the new list should be the first element of the second
list; then, the third element of the new list will be the second element of the first list and
the fourth element of the new list will be the second element of the second list, and so
on. If one list is longer than the other, put the extra elements on the end of the new list.
Also, if either list is empty, interleave returns the other list. *)

(* interleave : ’a list -> ’a list -> ’a list *)
let rec interleave l1 l2 = match l1,l2 with
  | [], [] -> []
  | l1, [] -> l1
  | [], l2 -> l2
  | x::xs, l2 -> x :: (interleave l2 xs)

(* let _ = interleave [1;2;5] [3;4;7;8;9] *)
