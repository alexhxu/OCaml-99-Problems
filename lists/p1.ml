(* Write a function last : 'a list -> 'a option that returns the last element of a list. (easy) *)
let rec last = function
  | [] -> None
  | x::[] -> Some x
  | _::xs -> last xs

let () = assert (Some 5 = last [1; 2; 3; 4; 5])
let () = assert (None = last [])
let () = print_string("All Tests Passed!\n")

