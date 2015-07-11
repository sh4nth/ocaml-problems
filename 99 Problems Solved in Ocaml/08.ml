(* Eliminate consecutive duplicates of list elements. *)

let compress x = 
    let rec aux acc lst last = match lst with
    [] -> acc
    | head::rest -> if ((Some head) = last) then aux acc rest last
                                            else aux (head::acc) rest (Some
                                            head) 
    in List.rev ( aux [] x None) ;;

compress ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;

