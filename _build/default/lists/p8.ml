(* Eliminate consecutive duplicates of list elements. (medium) *)
let rec compress list =
  match list with
  | [] -> []
  | x::[] -> x::[]
  | x::y::xs -> if x = y then compress (x::xs) else x::(compress (y::xs))

let () = assert (["a"; "b"; "c"; "a"; "d"; "e"] = 
          compress ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"])
let () = print_string("All Tests Passed!\n")