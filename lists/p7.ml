(* Flatten a nested list structure. (medium) *)
type 'a node =
    | One of 'a 
    | Many of 'a node list

(* 'a node list -> 'a list *)
let rec flatten list =
  (* 'a node -> 'a list -> 'a list *)
  let helper l acc =
    match l with
    | One x -> x::acc
    | Many x -> (flatten x) @ acc 
  in List.fold_right helper list []

let () = assert (["a"; "b"; "c"; "d"; "e"] = flatten [One "a"; Many [One "b"; Many [One "c" ;One "d"]; One "e"]])
let () = print_string("All Tests Passed!\n")