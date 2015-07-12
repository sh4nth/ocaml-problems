(* Run-length encoding of a list. *)

let encode lst = 
    let rec acc temp n = function
        a::(b::_ as t) -> if a = b then acc temp (n+1) t 
                                   else acc ((a,n)::temp) 1 t
        | a :: [] -> (a,n)::temp
        | [] -> [] (* Only reach here if you start with an empty list *)
    in List.rev ( acc [] 1 lst) ;;

encode ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"] ;;
encode [] ;;
encode ["Hello"] ;; 
