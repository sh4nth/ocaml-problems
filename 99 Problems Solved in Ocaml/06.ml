(* Find out whether a list is a palindrome. *)

let isPalindrome lst = 
    lst = List.rev lst ;;

isPalindrome [1; 2; 3; 4; 3; 2; 1] ;;
