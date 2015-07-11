(* Find the last but one element of a list. *)

let rec penult = function
    | [] | [_] -> None  (* Can't use `[] | [x] -> ...` here because whatever
    binding you have, should be on both sides of the '|' in an Or pattern match *)
    | [x; _] -> Some x
    | _::tail -> penult tail ;;

(* Examples *)
penult [ "a" ; "b" ; "c" ; "d" ];;
penult [ "a" ] ;;
