(* Modified run-length encoding. *)

type 'a rle = One of 'a | Many of 'a * int

let encode lst = 
    let pack (x,y) = if y > 1 then Many (x,y) else One (x) in
    let rec acc temp n = function
        a::(b::_ as t) -> if a = b then acc temp (n+1) t 
                                   else acc ( (pack(a,n))::temp) 1 t
        | a :: [] -> ( pack (a,n) )::temp
        | [] -> [] (* Only reach here if you start with an empty list *)
    in List.rev ( acc [] 1 lst) ;;

encode ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"] ;;
encode [] ;;
encode ["Hello"] ;; 
