;;; Common Lisp
;;;
;;; Testing some simple recursive functions
;;; probably not the best designs for runtime...

;; factorial function
(defun fac1 (x)
    (if (<= x 1)
        1
      (* x (fac1 (- x 1)))))
;---------------------------


;; fibonacci numbers 1
(defun fib1 (x)
    (if (or (zerop x) (= x 1))
        1
      (+ (fib1 (- x 1)) (fib1 (- x 2)))))
;----------------------------


;; fibonacci numbers 2
(defun fib2 (x)
    (if (or (zerop x) (= x 1))
        1
      (let 
        ((f1 (fib2 (- x 1)))
         (f2 (fib2 (- x 2))))
      (+ f1 f2))))
;-------------------------------

