(* get_primes: int -> int list *)
(* This function gets a list of all primes less than or equal to an int. *)

let get_primes n =
  let rec get' x k = if (x >= n) then k else
      if (prime_checker x k) then get' (x+1) (x::k) else get' (x+1) (k)
  and prime_checker x k = List.fold_left (fun b a -> if not(x mod a = 0) && (b) then true else false) true k
  in 
  (if (n < 2) then [] else get' 3 [2])

(* let test = get_primes 20 *)
