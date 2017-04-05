;;; Functions for list manipulation
;----------------------------------

;; Recursive List Length
(defun recur-list-length (L)
    (if (null L)
        0
      (1+ (recur-list-length (rest L)))))
;-----------------------------------------

;; nth list item #1
(defun list-nth-v1 (N L)
    (if (null L)
        nil
      (if (zerop N) 
          (first L)
        (list-nth-v1 (1- N) (rest L)))))
;------------------------------------------

;; nth list item #2
(defun list-nth-v2 (n L)
  (cond
    ((null L)   nil)
    ((zerop n)  (first L))
    (t          (list-nth-v2 (1- n) (rest L)))))
;--------------------------------------------

;; last item in list
(defun list-last (L)
    (cond
      ((null L) nil)
      ((null    (rest L)) (first L))
      (t        (list-last (rest L)))))
;----------------------------------------------

