(defvar *app* (make-instance 'ningle:<app>))

(setf (ningle:route *app* "/")
    "Welcome to Lisparro!")

(setf (ningle:route *app* "/hello/:name")
    #'(lambda (params)
        (format nil "Hello, ~A"
            (cdr (assoc "name" params :test #'string=)))))

(clack:clackup *app*)
