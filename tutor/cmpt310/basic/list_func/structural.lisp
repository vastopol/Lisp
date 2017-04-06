;;; Functions for list manipulation
;;; linear recursion
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
      ((null L) 		nil)
      ((null (rest L))  (first L))
      (t        		(list-last (rest L)))))
;----------------------------------------------

;; true if e is in list L
(defun list-member (e L)
	(cond
		((null L)			nil)
		 ((eq e (first L))	t)
		 (t					(list-member e (rest L)))))
;----------------------------------------------

;; append list L2 to List L1
(defun list-append (L1 L2)
	(if (null L1)
		L2
	  (cons (first L1) (list-append (rest L1) L2))))
;---------------------------------------------------

;; return all but last in list
(defun list-butlast (L)
	(if (consp (rest L))
		(cons (first L) (list-butlast (rest L)))
	  nil))
;---------------------------------------------------

;; intersection of sets L1 && L2
(defun list-intersection (L1 L2)
	(cond
		((null L1) nil)
		((member (first L1) L2)
			(cons (first L1) (list-intersection (rest L1) L2)))
		(t  (list-intersection (rest L1) L2))))
;-------------------------------------------------------