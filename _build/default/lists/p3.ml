(* Find the K'th element of a list. (easy) *)
let rec at count = function
  | [] -> None
  | x::_ when count = 1 -> Some x
  | _::xs -> at (count - 1) xs

let () = assert (Some "c" = at 3 ["a"; "b"; "c"; "d"; "e"])
let () = assert (None = at 3 ["a"])
let () = print_string("All Tests Passed!\n")