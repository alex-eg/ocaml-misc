let fact a =
  let rec tail_fact a b =
    if a == 0 then b 
    else tail_fact (a - 1) (a * b)
  in
  tail_fact a 1  

let rec fib a =
  if a == 2 || a == 1 then 1 else fib (a - 1) + fib (a - 2)

let rec range a b =
  if a > b then []
  else a :: range (a + 1) b
