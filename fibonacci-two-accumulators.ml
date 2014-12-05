(* I just implemented a Fibonacci series calculator using two accumulators. Why did I do this? *)

let fib n =
  let rec fib' x acc1 acc2 = if (x=n) then acc1 else fib' (x+1) acc2 (acc1+acc2)
  in fib' 0 0 1

let test = fib 10
