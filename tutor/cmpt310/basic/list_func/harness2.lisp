;;; test harness for list functions

(load "structural.lisp")

; test recursive list length
(print "list-length")
(print (recur-list-length `nil))
(print (recur-list-length `(1)))
(print (recur-list-length `(1 2 3 4)))
(print (recur-list-length `(1 2 3 4 5 6 7 8 9 10)))

; test nth v1
(print "list-nth v1")
(print (list-nth-v1 5 `nil))
(print (list-nth-v2 0 `nil))
(print (list-nth-v1 0 `(0 1 2 3 4 5 6 7 8 9)))
(print (list-nth-v1 1 `(0 1 2 3 4 5 6 7 8 9)))
(print (list-nth-v1 5 `(0 1 2 3 4 5 6 7 8 9)))
(print (list-nth-v1 20 `(0 1 2 3 4 5 6 7 8 9)))
(print (list-nth-v1 -1 `(0 1 2 3 4 5 6 7 8 9)))

; test nth v2
(print "list-nth v2")
(print (list-nth-v2 5 `nil))
(print (list-nth-v2 0 `nil))
(print (list-nth-v2 0 `(0 1 2 3 4 5 6 7 8 9)))
(print (list-nth-v2 1 `(0 1 2 3 4 5 6 7 8 9)))
(print (list-nth-v2 5 `(0 1 2 3 4 5 6 7 8 9)))
(print (list-nth-v2 20 `(0 1 2 3 4 5 6 7 8 9)))
(print (list-nth-v2 -1 `(0 1 2 3 4 5 6 7 8 9)))

; test last
(print "last")
(print (list-last `nil))
(print (list-last `(1)))
(print (list-last `(1 2 3 4)))
(print (list-last `(1 2 a b 3 c)))
(print (list-last `(q w e r a s d)))

; test member
(print (list-member 1 `nil))
(print (list-member 1 `(1)))
(print (list-member 2 `(1 1 1 1)))
(print (list-member 3 `(1 1 1 1 1 1 3 2 2 2)))

; test append
(print (list-append `nil `nil))
(print (list-append `nil `(1 2)))
(print (list-append `(1 2 3) `(4 5 6)))
(print (list-append `(1 2 4) `nil))

;test butlast
(print (list-butlast `nil))
(print (list-butlast `(1)))
(print (list-butlast `(1 2)))
(print (list-butlast `(9 8 7 6 5 4 3 2 1 0)))

; test intersection
(print (list-intersection `(1 3 5 7) `(1 2 3 4)))
(print (list-intersection `(1 2 3 4) `(5 6 7 8)))
(print (list-intersection `nil `(1 2 3)))
