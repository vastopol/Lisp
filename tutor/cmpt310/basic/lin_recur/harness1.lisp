;;; test harness for simple recursive functions

(load "simple.lisp")

; test triangular
(print "test triangular")
(print (triangular 1))
(print (triangular 10))
(print (triangular 100))

; test factorial
(print "test factorial")
(print (fac1 5))
(print (fac1 10))
(print (/ (fac1 100) (fac1 99)))

; test fibonacci 1
(print "test fib1")
(print (fib1 0))
(print (fib1 1))
(print (fib1 5))
(print (fib1 10))

; test fibonacci 2
(print "test fib2")
(print (fib2 0))
(print (fib2 1))
(print (fib2 5))
(print (fib2 10))

; test lucas 1
(print "test lucas1")
(print (lucas1 0))
(print (lucas1 1))
(print (lucas1 5))
(print (lucas1 10))

; test lucas 2
(print "test lucas2")
(print (lucas2 0))
(print (lucas2 1))
(print (lucas2 5))
(print (lucas2 10))

; test binomial coefficient
(print "test binomial")
(print (binomial 4 2))
(print (binomial 6 3))
(print (binomial 8 4))
(print (binomial 5 0))
(print (binomial 5 1))
(print (binomial 5 2))
(print (binomial 5 3))
(print (binomial 5 4))
(print (binomial 5 5))

