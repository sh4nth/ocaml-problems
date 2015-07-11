(* Find the k'th element of a list. *)

let rec kth k = function
    | [] -> None
    | this::rest -> if (k = 0) then Some this else kth (k-1) rest ;;

kth 3 [1; 4; 9; 16] ;;
kth 7 ['a'; 'b'; 'c'; 'd'; 'e'; 'f'; 'g'; 'h'; 'i'; 'j'] ;;
