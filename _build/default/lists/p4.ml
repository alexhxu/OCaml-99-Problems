(* Find the number of elements of a list. (easy) *)
let length xs =
  let rec length' (xs', acc) =
    match xs' with
      | [] -> acc
      | _::tl -> length' (tl, acc + 1)
  in length' (xs, 0)

let () = assert (5 = length [1; 2; 3; 4; 5])
let () = assert (0 = length [])
let () = assert (1 = length [1])
let () = print_string("All Tests Passed!\n")