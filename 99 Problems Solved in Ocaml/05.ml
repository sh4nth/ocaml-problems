(* Reverse a list. *)

let rev lst = 
    let rec transfer src dest = match src with
    [] -> dest
    | h::tail -> transfer tail (h::dest)
    in
    transfer lst [];;

rev [1; 2; 3; 4; 5; 6];;
