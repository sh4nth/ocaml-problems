(* Decode a run-length encoded list. *)

type 'a rle = One of 'a | Many of int * 'a ;;

let decode lst = 
    let unpack = function
        | One(a) -> (a,1)
        | Many(n,y) -> (y, n) 
    in
    let rec fill lst (a, n) = if n = 1 then a::lst else fill (a::lst) (a, n-1) in 
    let rec aux temp = function
        [] -> temp
        | x::tail -> aux (fill temp (unpack x)) tail 
    in List.rev ( aux [] lst) ;;

decode [Many (4,"a"); One "b"; Many (2,"c"); Many (2,"a"); One "d"; Many
(4,"e")];;
