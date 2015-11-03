fib(0,1).
fib(1,1).
fib(X, Z) :- X1 is X-1, X2 is X-2, fib(X1, W), fib(X2, Y), Z is W+Y.