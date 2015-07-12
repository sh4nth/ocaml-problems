(* Pack consecutive duplicates of list elements into sublists. *)

let pack lst =
    let rec aux acc temp lst = match (temp, lst) with
              ([] , []) -> acc
            | (_ , []) -> temp::acc
            | ([], a::t) -> aux acc [a] t
            | (a::_ , b::c) ->  if a=b then aux acc (b::temp) c
                                else aux (temp::acc) [b] c
    in List.rev (aux [] [] lst ) ;;

pack ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"d";"e";"e";"e";"e"];;
