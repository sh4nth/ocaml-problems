(* Eliminate consecutive duplicates of list elements. *)


(* let compress x = 
    let rec aux acc lst last = match lst with
    [] -> acc
    | head::rest -> if ((Some head) = last) then aux acc rest last
                                            else aux (head::acc) rest (Some
                                            head) 
    in List.rev ( aux [] x None) ;;
Better pattern matching: *)

let rec compress = function
    | a::(b::c as t) -> if a = b then compress t else a::(compress t )
    | smaller -> smaller ;;

compress ["a"; "a"];;
compress ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;

