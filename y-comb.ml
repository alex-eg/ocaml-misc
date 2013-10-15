let fix f =
  let h x =
    f (x x)
  in
  h h

let g fact n =
  if n == 0 then 1 else n * fact (n - 1)

    
