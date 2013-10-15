def y(f):
    h = lambda x: lambda *a: f(x(x), *a)
    return h(h)

g = lambda fact, n: 1 if n == 0 else n * fact(n - 1)
    
