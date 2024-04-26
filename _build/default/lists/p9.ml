(* Pack consecutive duplicates of list elements into sublists. (medium) *)
let pack list =
  let rec pack' list acc =
    match (list, acc) with
    | ([] , _) -> acc
    | (x::xs, []) -> pack' xs [[x]]
    | (x::xs, []::tl) -> pack' xs ([x]::tl)
    | (x::xs, (y::ys)::tl) when x = y -> pack' xs ((x::y::ys)::tl)
    | _ -> pack' list ([]::acc)
  in List.rev @@ pack' list []

  let () = assert ([["a"; "a"; "a"; "a"]; ["b"]; ["c"; "c"]; ["a"; "a"]; ["d"; "d"]; ["e"; "e"; "e"; "e"]] 
                      = pack ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "d"; "e"; "e"; "e"; "e"])
  let () = print_string("All Tests Passed!\n")