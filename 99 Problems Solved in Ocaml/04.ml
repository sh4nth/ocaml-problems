(* Find the number of elements of a list *)

(* Not tail-recursive as the 1 + function needs to wait for the recursive call
 * to return :(
 * let rec size = function
    | [] -> 0
    | _::tail -> 1 + size tail ;;
*)

let size =
    let rec aux n = function
        | [] -> n
        | _::tail -> aux (n+1) tail
    in 
    aux 0 ;;

size [ "a" ; "b" ; "c"];;
size [];;
