let build_maze w h =
  for i = 1 to w do
    for h = 1 to h do
      print_char '*'
    done;
    print_char '\n'
  done;;

let () =
  if Array.length Sys.argv < 3 then
    print_string "Not enough arguments!\n"
  else
    let width = int_of_string Sys.argv.(1) and
	height = int_of_string Sys.argv.(2) in
    build_maze width height;;
      
