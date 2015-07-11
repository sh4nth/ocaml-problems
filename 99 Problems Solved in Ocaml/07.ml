(* Flatten a nested list structure *)
(* There is no nested list type in OCaml, so we need to define one
 *      first. A node of a nested list is either an element, or a list of
 *           nodes. *)
type 'a node =
    | One of 'a 
    | Many of 'a node list ;;

let flatten x = 
    let rec prepend flatSoFar nested = match nested with
        [] -> flatSoFar
        | head::rest -> ( match head with
                           One(x) -> prepend (x::flatSoFar) rest
                         | Many(y) -> prepend (prepend flatSoFar y) rest
                        )
    in List.rev (prepend [] x) ;;

flatten [ One "a" ; Many [ One "b" ; Many [ One "c" ; One "d" ] ; One "e" ] ];;
                        
