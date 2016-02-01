(in-package :asdf)

(defsystem :lisparro
    :name "lisparro"
    :description "Podcast server for Narro"
    :depends-on (:cl-mongo
		 :ningle)
    :components
    ((:static-file "lisparro.asd")
     (:module :src
	      :serial t      
	      :components
	      ((:file "lisparro")
	      )))
