(defun my-length (list)
    if (list)
    (1+ (my-length(cdr list)))
    0)