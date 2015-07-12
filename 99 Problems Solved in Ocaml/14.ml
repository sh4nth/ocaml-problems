(* Duplicate the elements of a list *)

let dup lst = 
    let rec aux acc = function
        | [] -> acc
        | x::tail -> aux (x::(x::acc)) tail
    in List.rev ( aux [] lst  ) ;;

dup ["a";"b";"c";"c";"d"];; 
