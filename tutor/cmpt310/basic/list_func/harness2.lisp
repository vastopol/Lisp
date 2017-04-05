;;; test harness for list functions

(load "structural.lisp")

#|

; test recursive list length
(print "list-length")
(print (recur-list-length `nil))
(print (recur-list-length `(1)))
(print (recur-list-length '(1 2 3 4)))
(print (recur-list-length `(1 2 3 4 5 6 7 8 9 10)))

(print "list-nth v1")
(print (list-nth-v1 5 `nil))
(print (list-nth-v2 0 `nil))
(print (list-nth-v1 0 `(0 1 2 3 4 5 6 7 8 9)))
(print (list-nth-v1 1 `(0 1 2 3 4 5 6 7 8 9)))
(print (list-nth-v1 5 `(0 1 2 3 4 5 6 7 8 9)))
(print (list-nth-v1 20 `(0 1 2 3 4 5 6 7 8 9)))
(print (list-nth-v1 -1 `(0 1 2 3 4 5 6 7 8 9)))

(print "list-nth v2")
(print (list-nth-v2 5 `nil))
(print (list-nth-v2 0 `nil))
(print (list-nth-v2 0 `(0 1 2 3 4 5 6 7 8 9)))
(print (list-nth-v2 1 `(0 1 2 3 4 5 6 7 8 9)))
(print (list-nth-v2 5 `(0 1 2 3 4 5 6 7 8 9)))
(print (list-nth-v2 20 `(0 1 2 3 4 5 6 7 8 9)))
(print (list-nth-v2 -1 `(0 1 2 3 4 5 6 7 8 9)))

(print "last")
(print (list-last `nil))
(print (list-last `(1)))
(print (list-last `(1 2 3 4)))
(print (list-last `(1 2 a b 3 c)))
(print (list-last `(q w e r a s d)))

|#

