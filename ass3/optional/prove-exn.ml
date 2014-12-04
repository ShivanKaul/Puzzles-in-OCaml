module type PROOF = 
sig

  type prop = True | False | And of prop * prop | Or of prop * prop 

  val prove : prop -> bool
end

module Proof : PROOF = 
struct

  type prop = True | False | And of prop * prop | Or of prop * prop 

  exception Success
  exception Fail

  exception NotImplemented

  let rec prove p = 
    let rec prove' p = match p with
      | True -> raise Success
      | False -> raise Fail
      | And(p1, p2) -> (try (prove' p1) with
	  | Success -> prove' p2
	  | Fail -> raise Fail)
      | Or(p1, p2) -> try (prove' p1) with 
	  | Success -> raise Success
	  | Fail -> prove' p2

    in try prove' p with 
      | Success -> true
      | Fail -> false



end
