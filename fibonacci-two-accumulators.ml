(* I just implemented a Fibonacci series calculator using two accumulators, making it completely tail-recursive. *)  
(* It's quite interesting: this was the most obvious way that struck me. It's quite wonderful what 4 months of functional have done to my brain.*)

let fib n =
  let rec fib' x acc1 acc2 = if (x=n) then acc1 else fib' (x+1) acc2 (acc1+acc2)
  in fib' 0 0 1

let test = fib 10
