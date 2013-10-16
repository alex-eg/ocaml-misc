let explode s =
  let rec exp i l =
    if i < 0 then l else exp (i - 1) (s.[i] :: l) in
  exp (String.length s - 1) []

let count_words char_list separator =
  let rec tokenize char_list index count =
    match char_list with 
      [] -> count 
    | sep::tail when sep = separator -> tokenize tail (succ index) (succ count)
    | _::tail -> tokenize tail (succ index) count
  in
  tokenize char_list 0 0
  
let parse_stdin separator =
  let rec aux count =
    try
      let line = input_line stdin in
      aux ((count_words (explode line) separator) + count)
    with End_of_file -> count
  in
  aux 0
      
let () =
  let separator = Sys.argv.(1) in
  Printf.printf "count: %d\n" (parse_stdin separator.[0])
;;
