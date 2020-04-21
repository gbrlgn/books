(defun get-size (list)
    if list
        (1+ (get-size(cdr(list))))
        0)