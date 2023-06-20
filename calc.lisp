(let (
    (a 0) ;; 1st number
    (b 0) ;; 2nd number
    (op #\ ) ;; operation
    (result 0)) ;; result

    (format t "LispCalc~%")

    ;; get 1st number
    (format *query-io* "Enter 1st number: ")
    (finish-output *query-io*)
    (setq a (parse-integer (read-line *query-io*)))

    ;; get 2nd number
    (format *query-io* "Enter 2nd number: ")
    (finish-output *query-io*)
    (setq b (parse-integer (read-line *query-io*)))

    ;; get operation
    (format *query-io* "Enter operation (+, -, *, / or %): ")
    (finish-output *query-io*)
    (setq op (read-char *query-io*))
    
    ;; result calculation
    (ecase op
        (#\+ (setf result (+ a b)))
        (#\- (setf result (- a b)))
        (#\* (setf result (* a b)))
        (#\/ (setf result (/ a b)))
        (#\% (setf result (mod a b)))
        (otherwise (format t "Unknown operation~%")))
    (format t "~A ~A ~A = ~A~%" a op b result))
