(* Reverse a list. (easy) *)
let rev list =
  let rec rev' (list', acc) =
    match list' with
      | [] -> acc
      | x::xs -> rev' (xs, x::acc)
  in rev' (list, [])

let () = assert ([1; 2; 3] = rev [3; 2; 1])
let () = assert ([] = rev [])
let () = assert ([1] = rev [1])
let () = assert (["a"; "b"; "c"] = rev ["c"; "b"; "a"])
let () = print_string("All Tests Passed!\n")