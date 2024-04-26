(* Find out whether a list is a palindrome. (easy) *)
let is_palindrome list =
  List.rev list = list

let () = assert (true = is_palindrome ["a"; "b"; "a"])
let () = assert (true = is_palindrome [])
let () = assert (true = is_palindrome ["a"])
let () = assert (false = is_palindrome ["r"; "a"; "c"; "b"; "r"])
let () = print_string("All Tests Passed!\n")