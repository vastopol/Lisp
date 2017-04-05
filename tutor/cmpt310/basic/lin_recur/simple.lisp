;;; Common Lisp
;;; Testing some simple recursive functions
;;; probably not the best designs for runtime...
;;;---------------------------------------------

;; triangular numbers
(defun triangular (n)
    (if (<= n 1)
        1
      (+ n (triangular (- n 1)))))
;---------------------------

;; factorial function
(defun fac1 (n)
    (if (<= n 1)
        1
      (* n (fac1 (- n 1)))))
;---------------------------

;; fibonacci numbers 1
(defun fib1 (n)
    (if (or (zerop n) (= n 1))
        1
      (+ (fib1 (- n 1)) (fib1 (- n 2)))))
;----------------------------

;; fibonacci numbers 2
(defun fib2 (n)
    (if (or (zerop n) (= n 1))
        1
      (let 
          ((f1 (fib2 (- n 1)))
           (f2 (fib2 (- n 2))))
        (+ f1 f2))))
;-------------------------------

;; lucas numbers 1
(defun lucas1 (n)
    (cond ((= n 0) 2)
          ((= n 1) 1)
          (t (+ (lucas1 (- n 1)) (lucas1 (- n 2))))))
;--------------------------------------------------

;; lucas numbers 2
(defun lucas2 (n)
    (cond ((= n 0) 2)
          ((= n 1) 1)
          (t 
            (let
                ((l1 (lucas2 (- n 1)))
                 (l2 (lucas2 (- n 2))))
              (+ l1 l2)))))
;--------------------------------------------------

;; binomial coefficient
(defun binomial (n r)
    (if (or (= r 0) (= r n))
        1
      (let
          ((b1 (binomial (- n 1) (- r 1)))
           (b2 (binomial (- n 1) r)))
        (+ b1 b2))))
;----------------------------------------------------

