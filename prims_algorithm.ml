let print_border w h =
  for i = 1 to h + 2 do
    print_char '#'
  done;
  print_char '\n';
  for i = 1 to w do
    print_char '#';
    for j = 1 to h do
      print_char ' '
    done;
    print_char '#';
    print_char '\n'
  done;
  for i = 1 to h + 2 do
    print_char '#'
  done;
  print_char '\n';;  

let () =
  if Array.length Sys.argv < 3 then
    print_string "Not enough arguments!\n"
  else
    let width = int_of_string Sys.argv.(1) and
	height = int_of_string Sys.argv.(2) in
    print_border width height;;
      
