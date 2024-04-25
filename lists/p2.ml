(* Find the last but one (last and penultimate) elements of a list. (easy) *)
let rec last_two  = function
  | [] -> None
  | _::[] -> None
  | x::y::[] -> Some (x, y)
  | _::xs -> last_two xs

let () = assert (Some ("c", "d") = last_two ["a"; "b"; "c"; "d"])
let () = assert (None = last_two ["a"])
let () = assert (None = last_two [])
let () = assert (Some ("a", "b") = last_two ["a"; "b"])
let () = print_string("All Tests Passed!\n")
